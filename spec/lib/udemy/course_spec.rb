require 'spec_helper'

describe Udemy::Course do
  before(:all) do
    Udemy.client_key = 'abc'
    Udemy.client_secret = '123'
  end

  context 'findOne' do
    let(:course_response) { File.read(Rails.root.join("../fixtures/course.html")) }

    it "should require an id" do
      expect{ Udemy::Course.findOne(nil) }.to raise_error(Udemy::Error)
    end

    it "returns an object containing a title" do
      stub_request(:get, "https://www.udemy.com/api-1.1/courses/5816").
               to_return(:status => 200, :body => course_response, :headers => { content_type: "html/text"})

      course = Udemy::Course.findOne(5816)
      course.title.should_not be_blank
    end
  end
end