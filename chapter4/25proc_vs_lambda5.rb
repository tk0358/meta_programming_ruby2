p = Proc.new{|a, b| [a, b]}
p p.arity
p p.call(1, 2, 3)
p p.call(1)