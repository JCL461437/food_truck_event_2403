require 'pry'
require './lib/item'

class FoodTruck
    attr_reader :inventory, :name

    def initialize(name)
        @inventory = {}
        @name = name
    
    end
end