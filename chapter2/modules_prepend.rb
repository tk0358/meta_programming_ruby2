module M2
	def my_method
    'M2#my_method()'
  end
end

class C2
	prepend M2
end

class D2 < C2; end

p D2.ancestors		#=> 