module VCR
  module Normalizers
    module Body
      def self.included(klass)
        klass.extend ClassMethods
      end

      module ClassMethods
        def body_from(hash_or_string)
          #...
        end
      end
    end
  end
end