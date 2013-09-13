class Base
	def initialize(attribute_names=[])
		#animal 
		#person

		@attributes = {}
		attribute_names.each do |attr|
			@attributes[attr] = nil
		end
	end

	def method_missing(method, *args, &block)
		puts "Method is: #{method}"
		puts "Args is: #{args}"

		method_name = method.to_s[0..-1].downcase
		if @attributes[method_name.to_sym]
			puts "found a matching attribute"
		else
			super
		end
	end

end


cat = Base.new([:name, :breed])
person = Base.new([:name, :address])

cat.name = "kittie"
person.address = "555 somewher ave, fakeville"
