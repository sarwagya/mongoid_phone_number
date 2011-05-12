require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

class Person
  include Mongoid::Document

  field :name
  field :office_phone, :type => Mongoid::PhoneNumber
  field :home_phone, :type => Mongoid::PhoneNumber
end

Fabricator(:person) do
  name "Ben"
  office_phone "1 809 123 1234"
  home_phone "123-456-7891"
end

describe Mongoid::PhoneNumber do
  # TODO: remove arguments from Fabricate. Currently, it is not working properly without them.
  let(:person) { Fabricate(:person, :name => 'Ben', :office_phone => "1 809 123 1234", :home_phone => "123-456-7891") }

  context "a single instance" do

    it "should store a normalized phone number value" do
      person.attributes[:office_phone].should == '18091231234'
      person.attributes[:home_phone].should == '1234567891'
    end

    it "should return a formatted phone number" do
      person.office_phone.should == "1-809-123-1234"
      person.home_phone.should == "123-456-7891"
    end

    it "should handle nil data safely" do
      person.update_attribute(:home_phone, nil)
      person.home_phone.should == ""
    end
  end
end
