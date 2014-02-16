module Udemy
  class Client
    include HTTParty
    base_uri "https://www.udemy.com/api-1.1/"

    attr_accessor :headers

    def initialize
      @headers = {
        "X-Udemy-Client-Id" => Udemy.client_key,
        "X-Udemy-Client-Secret" => Udemy.client_secret
      }
    end
  end
end