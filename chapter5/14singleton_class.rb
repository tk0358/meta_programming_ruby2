obj = Object.new

singleton_class = class << obj
  self
end

p singleton_class.class

def obj.my_singleton_method; end
p singleton_class.instance_methods.grep(/my_/)