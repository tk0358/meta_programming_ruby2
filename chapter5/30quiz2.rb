module IntegerWrapper
  def +(value)
    self.super(value).super(1)
  end
end

Integer.class_eval do
  prepend IntegerWrapper
end

p 1 + 1