require 'spec_helper'

describe Udemy::Course do

  context 'findOne' do
    it "should require an id" do
      expect{ Udemy::Course.findOne(nil) }.to raise_error(Udemy::Error)
    end
  end
end