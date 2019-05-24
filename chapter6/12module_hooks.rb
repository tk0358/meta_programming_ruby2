module M1
  def self.included(othermod)
    puts "#{self}は#{othermod}にインクルードされた"
  end
end

module M2
  def self.prepended(othermod)
    puts "#{self}は#{othermod}にプリペン度された"
  end
end

class C
  include M1
  prepend M2
end