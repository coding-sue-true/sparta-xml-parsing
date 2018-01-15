require 'nokogiri'

class GuiseppesMenu

  attr_accessor :menu

  def initialize
    @menu = Nokogiri::XML(File.open('./xml_menu.xml'))
  end

  def get_menu_names
    @menu.search('name')
  end

  def xpath_get_names
    @menu.xpath('//calories')
  end

end

x = GuiseppesMenu.new
puts x.xpath_get_names
puts x.get_menu_names
