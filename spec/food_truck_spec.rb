require './lib/item'
require './lib/food_truck'

RSpec.configure do |config|
    config.formatter = :documentation
end

RSpec.describe FoodTruck do
    before(:each) do
        @food_truck = FoodTruck.new("Rocky Mountain Pies")
    end

    describe '#initialize' do
        it 'can initialize' do
            expect(@food_truck).to be_an_instance_of(FoodTruck)
        end

        it 'can return food truck name' do
            expect(@food_truck.name).to eq("Rocky Mountain Pires")
        end
        
        it 'can return food truck inventory' do
            expect(@food_truck.inventory).to eq({})
        end
    end

    describe '#check_stock' do
        it 'can check stock for an item' do
            expect(@food_truck.check_stock).to eq(0)
        end
    end

end