module ActiveModel
  module Validations
    extend ActiveSupport::Concern
    #...

    module ClassMethods
      def validate(*args, &block)
        #...
      end
    end
  end
end