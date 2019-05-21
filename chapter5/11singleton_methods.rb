str = "just a regular string"   # 普通の文字列

def str.title?
  self.upcase == self
end

p str.title?                  #=>
p str.methods.grep(/title?/)  #=>
p str.singleton_methods       #=> 