require 'hashie'
require 'httparty'
require 'udemy/client'

Hash.send :include, Hashie::HashExtensions

module Udemy

  class << self
    attr_accessor :client_key
    attr_accessor :client_secret
  end
end
