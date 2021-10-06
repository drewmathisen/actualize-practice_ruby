# item1 = { item_name: "dress", item_color: "red", item_price: 95.00}

# #array that all items are store into
# items = []
# items << item1

# p "[C]reate [R]ead [U]pdate [Q]uit"

# #create
# answer = gets.chomp 
# if answer == "C"
#   new_item = {}
#   p "Item name?"
#   item_name = gets.chomp
#   new_item[:item_name] = item_name
#   p "Item color?"
#   item_color = gets.chomp
#   new_item[:item_color] = item_color
#   p "Item price?"
#   item_price = gets.chomp.to_i
#   new_item[:item_price] = item_price 
#   items << new_item
# elsif answer == "R"
#   p "Item name:"
# end

#update
#quit

class Item 

  attr_reader :item_name, :item_color, :item_price
  attr_writer :item_name, :item_color, :item_price

  def initialize(input_item_options)
    @item_name = input_item_options[:item_name]
    @item_color = input_item_options[:item_color]
    @item_price = input_item_options[:item_price]
  end

end

dress = Item.new(item_name:"dress", item_color: "red", item_price: 100)
shirt = Item.new(item_name:"shirt", item_color: "green", item_price: 80)

p dress.item_name
p shirt.item_color