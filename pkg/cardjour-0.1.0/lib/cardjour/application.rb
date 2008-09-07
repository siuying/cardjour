require 'rubygems'
require 'net/dns/mdns-sd'
require 'cardjour/service'
require 'cardjour/command/help'
require 'cardjour/command/list'
require 'cardjour/command/publish'

Thread.abort_on_exception = true
module Cardjour
  CJ_SERVICE_NAME = "Cardjour"
  CJ_BONJOUR_NAME = "_cardjour._tcp"
  VCardService = Struct.new(:name, :host, :port, :description)
  DNSSD = Net::DNS::MDNSSD
  
  class Application
    class << self
      include Command::List
      include Command::Publish
      include Command::Help
      
      # Entry point
      def run(*args)
        case args.shift
          when "publish"
            publish(*args)
          when "list"
            list
          else
            help
        end
      end
    end
  end
end
