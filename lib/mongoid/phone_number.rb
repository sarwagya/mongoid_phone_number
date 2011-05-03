require 'mongoid/conversions'

class PhoneNumber
  extend Mongoid::Extensions::PhoneNumber::Conversions
end