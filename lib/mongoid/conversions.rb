# encoding: utf-8
module Mongoid::Extensions
  module PhoneNumber
    module Conversions
      def set(value)
        return nil if value.blank?
        begin
          value.gsub!(/[^0-9]/,'')
        rescue
          value
        end
      end

      def get(value)
        value.to_s.split(/([0-9]{3})([0-9]{3})([0-9]{4})$/).delete_if(&:blank?).join("-")
      end
    end
  end
end
