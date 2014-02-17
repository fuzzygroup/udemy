module Udemy
  class Client
    include HTTParty

    base_uri "https://www.udemy.com/api-1.1"

    attr_accessor :headers

    def initialize
      raise Error.new("Your API credentials are missing") \
        if (Udemy.client_key.blank? || Udemy.client_secret.blank?)

      @headers = {
        "X-Udemy-Client-Id" => Udemy.client_key,
        "X-Udemy-Client-Secret" => Udemy.client_secret
      }
    end

    def get(url, opts = {})
      opts = {headers: @headers}.merge(opts)

      Udemy::Client.get(url, opts)
    end

    def post(url, opts = {})
      opts = {headers: @headers}.merge(opts)

      Udemy::Client.post(url, opts)
    end

    # Handle Response from HTTParty
    def self.get(*args)
      handle_response(super)
    end

    def self.post(*args)
      handle_response(super)
    end

    def self.handle_response(response)
      raise Error.new("No response from the server. Make sure the URL is correct.") \
        if (response.blank? || response.parsed_response.blank?)

      json_response = JSON.parse(response.parsed_response)
      response_hash = Hashie::Mash.new(json_response)

      raise Udemy::APIResponseError.new(response_hash.status) unless response.code == 200

      return Hashie::Mash.new(response_hash)
    end

  end
end