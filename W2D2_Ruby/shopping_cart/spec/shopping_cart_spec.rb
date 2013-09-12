require 'spec_helper'
require './lib/shopping_cart'

describe "Shopping Cart" do
		let(:cart) { ShoppingCart.new}
		let(:item_1) { Item.new 5.00}
		let(:item_2) { Item.new 5.50}
		it "should return 0 when the cart is empty" do
		expect(Shopping Cart.new.total).to eq(0)
		end

		it 'should return correct total when 1 item has been added' do
			cart.add item
			expect(cart.total).to eq(5.00)
		end

		it 'should properly add up total with 2 items' do
			cart.add_item_1
			cart.add_item_2
			expect(cart.total).to eq(10.5)
		end

		it 'should return false when cart is not empty' do
			cart.add item_1
			expect(cart.empty?).to be_false

		end

		it 'should return true when the cart is empty' do
			expect(cart.empty?).to be_true
		end

		it 'should clear the cart of all items' do
			cart.add item_1
			cart.clear
			expect(cart.empty?).to be_true
		end

	describe "Remove" do
		it 'should remove a specific item from the cart' do
			cart.add item_1
			cart.remove item_1
			expect(cart.empty?).to be_true
		end

		it 'should only remove the given item' do 
			cart.add item_1
			cart.add item_2

			cart.remove item_1
			expect(cart.empty?).to be_false
		end

		it "should do nothing when removing item from empty cart" do
			expect{cart.remove item_2}.to_not raise_error
		end


		it 'should remove the proper item from a cart with multiple items' do
			cart.add item_1
			cart.add item_2

			cart.remove item_2
			expect(cart.items).to eq([item_1])

		end
	end
end
