require './lib/item'
require './lib/food_truck'

RSpec.configure do |config|
    config.formatter = :documentation
end

RSpec.describe FoodTruck do
    before(:each) do
        @food_truck1 = FoodTruck.new("Rocky Mountain Pies")
        @food_truck2 = FoodTruck.new("Ba-Nom-a-Nom") 
        @food_truck3 = FoodTruck.new("Palisade Peach Shack")    
        @item1 = Item.new({name: 'Peach Pie (Slice)', price: "$3.75"})
        @item2 = Item.new({name: 'Apple Pie (Slice)', price: '$2.50'})
        @item3 = Item.new({name: "Peach-Raspberry Nice Cream", price: "$5.30"})
        @item4 = Item.new({name: "Banana Nice Cream", price: "$4.25"})
    end

    describe '#initialize' do
        it 'can initialize' do
            expect(@food_truck1).to be_an_instance_of(FoodTruck)
        end

        it 'can return food truck name' do
            expect(@food_truck1.name).to eq("Rocky Mountain Pies")
        end
        
        it 'can return food truck inventory' do
            expect(@food_truck1.inventory).to eq({})
        end
    end

    describe '#check_stock' do
        it 'can check stock for an item' do
            expect(@food_truck1.check_stock(@item1)).to eq(0)
        end
    end

    describe '#stock' do
        it 'can stock an item' do
            @food_truck1.stock(@item1, 30)
            expect(@food_truck1.inventory).to eq({@item1 => 30})
        end
    end

    describe '#stock' do
        it 'can stock an item' do
            @food_truck1.stock(@item1, 30)
            expect(@food_truck1.inventory).to eq({@item1 => 30})
        end
    end

    describe '#potential_revenue' do
        it "can calculate potential total revenue" do
            @food_truck1.stock(@item1, 35) 
            @food_truck1.stock(@item2, 7)
            @food_truck2.stock(@item4, 50)  
            @food_truck2.stock(@item3, 25)
            @food_truck3.stock(@item1, 65)  

            expect(@food_truck1.potential_revenue). to eq (148.75)
            expect(@food_truck2.potential_revenue). to eq (345.00)
            expect(@food_truck3.potential_revenue). to eq (243.75)
        end
    end

end