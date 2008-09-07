require 'vpim/vcard'

module Cardjour
  module Command
    module Publish
      # Publish the card service
      def publish(card, *rest)
        vcard = Vpim::Vcard.decode(open(card)).first
        username = vcard.name.fullname rescue "Unknown"
        port = rest.shift || 3300
        description = rest.shift || "#{username}'s Cardjour"

        DNSSD.register(username, CJ_BONJOUR_NAME, 'local', port.to_i, { "description" => description }) do |rr|
          puts "Registered #{username} on port #{port}. Starting service."
        end
        
        Service.new(port.to_i, card).start
      end
      module_function :publish      
    end
  end
end