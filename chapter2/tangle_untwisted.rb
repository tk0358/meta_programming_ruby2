module Printable
	#...
end

module Document
  #...
end

class Book
  include Printable
  include Document
  
  p ancestors
end