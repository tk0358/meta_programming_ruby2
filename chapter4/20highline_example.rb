require 'highline'

h1 = HighLine.new
name = h1.ask("名前は？", lambda{|s| s.capitalize })
puts "Hello, #{name}"