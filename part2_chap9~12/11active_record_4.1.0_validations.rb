module ActiveRecord
  module Validations
    # The validation process on save can be skipped by passing
    # <tt>validate: false</tt>.
    # The regular Base#save method is replaced with this when the
    # validationsmodule is mixed in, which it is by default.
    def save(options={})
      perform_validations(options) ? super : false
    end

    # Attempts to save the record just like Base#save but will raise
    # a +RecordInvalid+ exception instead of returning +false+ if
    # the record is not valid.
    def save!(options={})
      perform_validations(options) ? super : raise(RecordInvalid.new(self))
    end

    def perform_validations(options={})
      #...
      options[:validate] == false || valid?(options[:context])
    end
  end
end