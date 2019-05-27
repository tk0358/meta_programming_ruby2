module ActiveSupport
  module Concern
    def append_features(base)
      if base.instance_variable_defined?(:@_dependencies)
        base.instance_variable_get(:@_dependencies) << self
        return false
      else
        return false if base < self
        @_dependencies.each { |dep~ base.send(:include, dep) }
        super
        base.extend const_get(:ClassMethods) \
          if const_defined(:ClassMethods)
        #...
      end
    end
      
    #...   
  end
end