module Udemy
  class Client
    include HTTParty

    base_uri "https://www.udemy.com/api-1.1"

    attr_accessor :headers

    def initialize
      @headers = {
        "X-Udemy-Client-Id" => Udemy.client_key,
        "X-Udemy-Client-Secret" => Udemy.client_secret
      }
    end

    def get(url, query = {})
      Udemy::Client.get(url, headers: @headers, query: query)
    end

    def post(url, query = {})
      Udemy::Client.post(url, headers: @headers, query: query)
    end

    # Handle Response from HTTParty
    def self.get(*args)
      handle_response(super)
    end

    def self.post(*args)
      handle_response(super)
    end

    def self.handle_response(response)
      json_response = JSON.parse(response.parsed_response)
      response_hash = Hashie::Mash.new(json_response)

      raise Udemy::APIResponseError.new(response_hash.status) unless response.code == 200

      return Hashie::Mash.new(response_hash)
    end

  end
end