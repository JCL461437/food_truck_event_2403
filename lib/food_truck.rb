require 'pry'
require './lib/item'

class FoodTruck
    attr_reader :inventory, :name

    def initialize(name)
        @inventory = {}
        @name = name
    
    end

    def check_stock(item)
        @inventory.count(item)
    end

    def stock(item, quantity)
        @inventory.store(item, quantity)
    end
end

