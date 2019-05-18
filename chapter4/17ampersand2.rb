def my_method(&the_proc)
  the_proc
end

p = my_method{|name| "Hello, #{name}!"}
p p.class
p p.call("Bill")