
require 'pry'

class Item
    attr_reader :item, :name, :price

    def initialize(item)
        @item = item
        @name = @item[:name]
        @price = @item[:price]

    end
end