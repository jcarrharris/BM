class ShoppingCart
	def initialize
		@items = []
	end
	def total
		if @item.empty?
			return 0
		end

		total = 0
		@items.each {|item| total += item.price}
		total
	end

	def add item
		@item << item
	
	end
	
	def clear
		@items = []
	end

	def empty?
		@items.empty?
	end

	def remove item
		@items.reject! { |i| i == item }
	end

	def items
		@items
	end


end
