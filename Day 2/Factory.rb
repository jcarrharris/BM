class Civic
	@@cars = 0

	def initialize
		@@cars = @@cars + 1
	end

	def start
			puts "vroom vroom"
	end

	def start
			puts "boom crash"
		end
	
	def self.how_many_cars
		puts @@cars
	end
end

car = Civic.new
Civic.new
Civic.new
Civic.new
Civic.new

x = Civic.new
x.start