require 'nokogiri'

class GuiseppesMenu

  attr_accessor :menu

  def initialize
    @menu = Nokogiri::XML(File.open('./xml_menu.xml'))
  end

  # Place your methods here
  def get_all_food_items
    @menu.search('food')
  end

  def get_all_prices_as_floats
    price_array = []
    @menu.search('price').each do |price|
      price.text.gsub('£', '').to_f
    end

    price_array
  end

end

x = GuiseppesMenu.new
puts x.get_all_prices_as_floats

# get_all_food_items
