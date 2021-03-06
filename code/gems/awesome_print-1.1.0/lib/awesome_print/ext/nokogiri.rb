#---
# Excerpted from "Metaprogramming Ruby 2",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit http://www.pragmaticprogrammer.com/titles/ppmetr2 for more book information.
#---
# Copyright (c) 2010-2012 Michael Dvorkin
#
# Awesome Print is freely distributable under the terms of MIT license.
# See LICENSE file or http://www.opensource.org/licenses/mit-license.php
#------------------------------------------------------------------------------
module AwesomePrint
  module Nokogiri

    def self.included(base)
      base.send :alias_method, :cast_without_nokogiri, :cast
      base.send :alias_method, :cast, :cast_with_nokogiri
    end

    # Add Nokogiri XML Node and NodeSet names to the dispatcher pipeline.
    #------------------------------------------------------------------------------
    def cast_with_nokogiri(object, type)
      cast = cast_without_nokogiri(object, type)
      if (defined?(::Nokogiri::XML::Node) && object.is_a?(::Nokogiri::XML::Node)) || 
         (defined?(::Nokogiri::XML::NodeSet) && object.is_a?(::Nokogiri::XML::NodeSet))
        cast = :nokogiri_xml_node
      end
      cast
    end

    #------------------------------------------------------------------------------
    def awesome_nokogiri_xml_node(object)
      if object.is_a?(::Nokogiri::XML::NodeSet) && object.empty?
        return "[]"
      end
      xml = object.to_xml(:indent => 2)
      #
      # Colorize tag, id/class name, and contents.
      #
      xml.gsub!(/(<)(\/?[A-Za-z1-9]+)/) { |tag| "#{$1}#{colorize($2, :keyword)}" }
      xml.gsub!(/(id|class)="[^"]+"/i) { |id| colorize(id, :class) }
      xml.gsub!(/>([^<]+)</) do |contents|
        contents = colorize($1, :trueclass) if contents && !contents.empty?
        ">#{contents}<"
      end
      xml
    end
  end
end

AwesomePrint::Formatter.send(:include, AwesomePrint::Nokogiri)
