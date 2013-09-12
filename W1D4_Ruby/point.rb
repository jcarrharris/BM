class Point
	include Comparable

	attr_accessor :x, :y

	def initialize(x,y)
		@x = x
		@y = y
	end

	def <=>(other)
		@x <=> other.x && @y <=> other.y
	end

	def to_s
		"#{@x} #{@y}"
	end
end
