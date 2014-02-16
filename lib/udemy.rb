require 'hashie'
require 'httparty'
require 'udemy/client'

Hash.send :include, Hashie::HashExtensions

module Udemy

  class << self
    attr_accessor :client_key
    attr_accessor :client_secret
  end

  # Base API Error Object
  class Error < StandardError
    attr_reader :data

    def initialize(data)
      @data = data
      super
    end
  end
end
