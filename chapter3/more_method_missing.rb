class Lawyer
  def method_missing(method, *args)
    puts "呼び出した: #{method}(#{args.join(',')})"
    puts "(ブロックも渡した)" if block_given?
  end
end

bob = Lawyer.new
bob.talk_simple('a', 'b') do
  # block
end