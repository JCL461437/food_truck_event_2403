require 'pry'
require './lib/item'
require './lib/food_truck.rb'

class Event
    attr_reader :name, :food_trucks

    def initialize(name)
        @name = name
        @food_trucks = []
    
    end

end