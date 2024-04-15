
require './lib/item'

RSpec.configure do |config|
    config.formatter = :documentation
end

RSpec.describe Item do
    before(:each) do
        @item = Item.new
    end

    describe '#initialize' do
        it 'can initialize' do
            expect(@item).to be_an_instance_of(Item)
        end
        
        it 'can collect all cells' do
            expect(@item.).to eq)
        end
    end

end