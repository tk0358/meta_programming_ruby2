my_var = "成功"

MyClass = Class.new do
  # これでmy_varを表示できる...
  puts "クラス定義のなかは#{my_var}!"

  def my_method
    # ...でも、ここに表示するには？
  end
end