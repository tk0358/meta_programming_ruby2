require 'builder'
xml = Builder::XmlMarkup.new(:target=>STDOUT, :indent=>2)

xml.coder {
  xml.name 'まつもと', :nickname => 'Matz'
  xml.language 'Ruby'
}