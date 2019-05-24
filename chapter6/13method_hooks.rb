module M
  def self.method_added(method)
    puts "新しいメソッド#{method}"
  end

  def my_method; end
end