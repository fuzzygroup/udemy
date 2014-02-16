require 'spec_helper'

describe Udemy::Client do
  before :all do
    Udemy.client_key = 'abc'
    Udemy.client_secret = '123'
  end

  let(:client) { Udemy::Client.new }

  let(:headers) {
    {
      "X-Udemy-Client-Id" => Udemy.client_key,
      "X-Udemy-Client-Secret" => Udemy.client_secret
    }
  }

  it "has client credientials in headers" do
    client.headers.should eql headers
  end

  it "creates errors" do
    expect {
      client.get("/non-existant-api-call")
    }.to raise_error(Udemy::APIResponseError)
  end
end