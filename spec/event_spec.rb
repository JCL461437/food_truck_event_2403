require './lib/item'
require './lib/food_truck'
require './lib/event'

RSpec.configure do |config|
    config.formatter = :documentation
end

RSpec.describe Event do
    before(:each) do
        @event = Event.new("South Pearl Street Farmers Market")    
        @food_truck = FoodTruck.new("Rocky Mountain Pies")
        @item1 = Item.new({name: 'Peach Pie (Slice)', price: "$3.75"})
        @item2 = Item.new({name: 'Apple Pie (Slice)', price: '$2.50'})
    end

    describe '#initialize' do
        it 'can initialize' do
            expect(@event).to be_an_instance_of(Event)
        end
        
        it 'can return event name' do
            expect(@event.name).to eq("South Pearl Street Farmers Market")
        end

        it 'can return food trucks at event' do
            expect(@event.food_trucks).to eq([])
        end

    end




end