module MyModule
  def self.my_method; 'hello'; end
end

class MyClass
  include MyModule
end

p MyClass.my_method   #=> NoMethodError!