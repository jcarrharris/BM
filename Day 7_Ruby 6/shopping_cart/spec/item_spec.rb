require 'spec_helper'
require './lib/item'
describe "Item" do
	it "should have a price" do
		item = Item.new  12.95
		expect(item.price).to eq(12.95)
	end

	it 'should compare two items according to price properly' do
		item1 = Item.new 1.50
		item2 = Item.new 2.50
		item1.price.should < item2.price
	end
end
