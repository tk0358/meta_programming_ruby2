POSSIBLE_VERBS = ['get', 'put', 'post', 'delete']

POSSIBLE_VERBS.each do |m|
  eval <<-end_eval
		def #{m}(path, *args, &b)
			r[path].#{m}(*args, &b)
		end
	end_eval
end