require 'set'

module Cardjour
  module Command
    module List
      VCardService = Struct.new(:name, :host, :port, :description)

      # List services to console
      def list
      	service_list.each do |service|
          puts "=== #{service.name} on #{service.host}:#{service.port} ==="
          puts "  #{service.description}"
          puts "    http://#{service.host}:#{service.port}/"
          puts
        end
      end
      module_function :list
      
      private
      # Discover and Retrieve list of services
      def service_list
        list = Set.new
        discover { |obj| list << obj }
        return list
      end
      module_function :service_list
      
      # Discover list of services
      def discover(timeout=5)
        waiting_thread = Thread.current
        dns = DNSSD.browse CJ_BONJOUR_NAME do |reply|
          DNSSD.resolve reply.name, reply.type, reply.domain do |resolve_reply|
            service = VCardService.new(reply.name,
                                     resolve_reply.target,
                                     resolve_reply.port,
                                     resolve_reply.text_record['description'].to_s)
            begin
              yield service
            rescue Done
              waiting_thread.run
            end
          end
        end
        puts "Gathering for up to #{timeout} seconds..."
        sleep timeout
        dns.stop
      end
      module_function :discover
      
    end
  end
end