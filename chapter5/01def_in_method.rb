class C
  def m1
    def m2; end
  end
end

class D < C; end

obj = D.new
obj.m1

p C.instance_methods(false)