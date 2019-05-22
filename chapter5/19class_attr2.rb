class MyClass
  class << self
    attr_accessor :c
  end
end

MyClass.c = 'It works!'
p MyClass.c