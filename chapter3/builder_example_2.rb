require 'builder'
xml = Builder::XmlMarkup.new(:target=>STDOUT, :indent=>2)
xml.semester {
  xml.class 'エジプト学'
  xml.class '鳥類学'
}