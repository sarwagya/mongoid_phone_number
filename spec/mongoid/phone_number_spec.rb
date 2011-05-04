require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

class Person
  include Mongoid::Document

  field :name
  field :home_phone, :type => Mongoid::PhoneNumber
end

Fabricator(:person) do
  name "Ben"
  home_phone "1 809 123 1234"
end

describe Mongoid::PhoneNumber do
  let(:person) { Fabricate :person }

  context "a single instance" do

    it "should store a normalized phone number value" do
      person.attributes[:home_phone].should == '18091231234'
    end

    it "should return a default formatted phone number" do
      phone = person.home_phone
      phone.to_s.should == "+1 809 123 1234"
    end

    it "should allow formatting the phone number with other phony options" do
      phone = person.home_phone
      phone.format = "national"
      phone.spaces = "."
      phone.to_s.should == "0809.123.1234"
    end
  end
end
