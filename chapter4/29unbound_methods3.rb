module MyModule
  def my_method
    42
  end
end

unbound = MyModule.instance_method(:my_method)
String.send(:define_method, :another_method, unbound)
p "abc".another_method