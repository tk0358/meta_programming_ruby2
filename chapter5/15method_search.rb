class C
	def a_method
    'C#a_method()'
  end
end


class D < C; end
obj = D.new
p obj.a_method	

class << obj
  def a_singleton_method
    'obj#a_singleton_method()'
  end
end

p obj.singleton_class.superclass    #=> D

class C
  class << self
    def a_class_method
      'C.a_class_method()'
    end
  end
end

p D.singleton_class   #=> #<Class:D>
p C.singleton_class   #=> #<Class:C>
p D.singleton_class.superclass  #=> #<Class:C>
p C.singleton_class.superclass  #=> #<Class:Object>

p D.a_class_method