class MyClass
  def initialize
    @v1 = 1
  end
end

obj = MyClass.new

obj.instance_eval do
  p self
  p @v1
end

v = 2
obj.instance_eval { @v = v}
obj.instance_eval { p @v }