def double(callable_object)
  callable_object.call * 2
end

p = Proc.new { return 10 }
p double(p)