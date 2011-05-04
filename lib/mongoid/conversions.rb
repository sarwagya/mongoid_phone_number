require 'phony'
# encoding: utf-8
module Mongoid::Extensions
  module PhoneNumber
    module Conversions
      def set(value)
        return nil if value.blank?
        begin
          Phony.normalize(value)
        rescue
          value
        end
      end

      def get(value)
        Phone.new(value)
      end
    end

    protected

    # This class is used to set different Phony options in runtime because Phony doesn't allow creating a new object
    class Phone
      attr_accessor :spaces, :format, :value

      def initialize (value = nil, format="international", spaces = " ")
        @format = format
        @spaces = spaces
        @value = value
      end

      def to_s()
        Phony.format(@value.to_s, :format => @format.to_sym, :spaces => @spaces.to_sym)
      end
    end
  end
end
