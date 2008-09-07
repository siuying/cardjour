require 'webrick'
module Cardjour
  class Service    
    def initialize(port, file)
      @port = port
      @file = file
      @card = nil
    end

    def start
      puts "serving at #{@port} with #{@file}"
      http = WEBrick::HTTPServer.new(:Port => @port.to_i)
      http.mount_proc("/") { |req, res| index(req, res) }
      trap("INT") { http.shutdown }
      t = Thread.new { http.start }
      t.join
    end

    private
    def index(req, res)
      res['Content-Type'] = 'text/x-vCard'
      res["Content-Disposition"] = "attachment; filename=#{File.basename(@file)}"
      res.body = open(@file).read
    end
  end
end