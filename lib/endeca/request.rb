require 'uri'
module Endeca
  class Request

    def self.perform(path, query=nil)
      new(path, query).perform
    end

    def initialize(path, query=nil)
      @path  = path.strip
      @query = query
    end

    def perform
      handle_response(get_response)
    end

    def uri
      return @uri if @uri

      @uri = URI.parse(@path)
      @uri.query = query_string
      @uri
    end

    private

    def get_response #:nodoc:
      http = Net::HTTP.new(uri.host, uri.port)
      request = Net::HTTP::Get.new(uri.request_uri)
      http.request(request)
    end

    # Raises exception Net::XXX (http error code) if an http error occured
    def handle_response(response) #:nodoc:
      case response
      when Net::HTTPSuccess
        JSON.parse(response.body)
      else
        response.error! # raises exception corresponding to http error Net::XXX
      end
    end

    def query_string
      query_string_parts = [@uri.query, @query.to_params]
      query_string_parts.reject!{ |s| s.nil? || s.empty? }

      query_string_parts.empty? ? nil : query_string_parts.join('&')
    end
  end
end