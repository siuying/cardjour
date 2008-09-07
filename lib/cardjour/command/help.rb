module Cardjour
  module Command
    module Help
      def help
        puts "usage: cardjour publish <vcard-file> [port] [description]"
        puts "usage: cardjour list"
      end
      module_function :help      
    end
  end
end