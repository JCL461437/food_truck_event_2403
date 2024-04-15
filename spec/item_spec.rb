
require './lib/item'

RSpec.configure do |config|
    config.formatter = :documentation
end

RSpec.describe Item do
    before(:each) do
        @item1 = Item.new({name: 'Peach Pie (Slice)', price: "$3.75"})
        @item2 = Item.new({name: 'Apple Pie (Slice)', price: '$2.50'})
    end

    describe '#initialize' do
        it 'can initialize' do
            expect(@item1).to be_an_instance_of(Item)
        end
        
        it 'can return item name' do
            expect(@item1.name).to eq("Peach Pie (Slice)")
        end

        it 'can return item price' do
            expect(@item1.price).to eq("$3.75")
        end
    end

end