require 'hashie'
require 'httparty'
require 'udemy/client'
require 'udemy/course'

Hash.send :include, Hashie::HashExtensions

module Udemy

  class << self
    attr_accessor :client_key
    attr_accessor :client_secret
  end

  class Error < StandardError; end

  # Base API Error Object
  class APIResponseError < StandardError
    attr_reader :data

    def initialize(data)
      @data = data
      super
    end
  end
end
