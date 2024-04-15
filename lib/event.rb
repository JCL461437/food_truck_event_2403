require 'pry'
require './lib/item'
require './lib/food_truck.rb'

class Event
    attr_reader :name, :food_trucks

    def initialize(name)
        @name = name
        @food_trucks = []
    end

    def add_food_truck(truck)
        @food_trucks << truck 
    end

    def food_truck_names
        @food_trucks.map do |food_truck|
            food_truck.name
        end
    end


    def food_trucks_that_sell(item)
        food_trucks_selling_item = []
        @food_trucks.each do |food_truck|
            if food_truck.inventory.keys.any? { |inventory_item| inventory_item.name == item.name }
                food_trucks_selling_item << food_truck
            end   
        end
        food_trucks_selling_item
    end
    
end