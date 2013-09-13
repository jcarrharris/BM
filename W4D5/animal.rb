class Animal

	# def speak
	# 	puts "meow"
	# end

	def method_missing(method, *args, &block)
		if method == :purr
			puts "purrrrr"
			yield
		else
			super
		end
	end

	def respond_to_missing?(method, internal)
		return true if method == :purr
	end

end

cat = Animal.new
cat.purr  do
	puts "meow"
end
puts cat.respond_to?(:purr)
