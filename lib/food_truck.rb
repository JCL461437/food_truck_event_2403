require 'pry'
require './lib/item'

class FoodTruck
    attr_reader :inventory, :name

    def initialize(name)
        @inventory = {}
        @name = name
    
    end

    # def check_stock(item)
    #     @inventory.count(item)
    # end

    # def stock(item, quantity)
    #     @inventory.store(item, quantity)
    # end

    def check_stock(item)
        @inventory[item] || 0
    end
    
    def stock(item, quantity)
        @inventory[item] = quantity
    end
    
    def potential_revenue
        total_revenue = Float.new()
        
        @inventory.each do |item, quantity|
            total_revenue += (item.price.to_f * quantity)
        end
        
        total_revenue
    end


end

