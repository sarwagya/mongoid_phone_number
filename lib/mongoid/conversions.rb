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
        Phony.format(value.to_s, :format => :international, :spaces => :-)
      end
    end
  end
end
