module ActiveRecord
  module Validations
    def self.included(base)
      base.extend ClassMethods
      #...
      base.class_eval do
        alias_method_chain :save, :validation
        alias_method_chain :save!, :validation
      end
    end

    #...
    def save_with_validation(perform_validation = true)
      if perform_validation && valid? || !perform_validation
        save_without_validation
      else
        false
      end
    end

    def save_with_validation!
      if valid?
        save_without_validation!
      else
        raise RecordInvalid.new(self)
      end
    end

    def valid?
      #...
    end
  end
end