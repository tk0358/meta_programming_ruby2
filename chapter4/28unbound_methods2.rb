class Foo
  def foo
    "foo"
  end
end

p m = Foo.instance_method(:foo)  #=> #<UnboundMethod: Foo#foo>

# FooのインスタンスをレシーバとするMethodオブジェクトを生成
p m.bind(Foo.new)                #=> #<Method: Foo#foo>