def another_double
  p = Proc.new { return 10 }
  result = p.call
  return result * 2   # ここまで来ない！
end

p another_double    #=>