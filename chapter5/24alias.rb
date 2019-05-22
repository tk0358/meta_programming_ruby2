class MyClass
  def my_method; 'my_method()'; end
  alias_method :m, :my_method
end

obj = MyClass.new
p obj.my_method   #=>
p obj.m           #=>