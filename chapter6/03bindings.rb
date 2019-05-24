class MyClass
  def my_method
    @x = 1
    require "pry"; binding.pry
    binding
  end
end

b = MyClass.new.my_method   #=>

p eval "@x", b

class AnotherClass
  def my_method
    eval "self", TOPLEVEL_BINDING
  end
end

p AnotherClass.new.my_method  #=>