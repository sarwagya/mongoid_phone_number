require 'mongoid_phone_number/conversions'

module Mongoid
  class PhoneNumber
    extend Mongoid::Extensions::PhoneNumber::Conversions
  end
end
