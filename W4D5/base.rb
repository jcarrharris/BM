class Base
	def initialize(attribute_names=[])
		#animal 
		#person

		@attributes = {}
		attribute_names.each do |attr|
			@attributes[attr] = nil
		end
	end

	def update_attributes(attributes)
		@attributes.merge! attributes
	end


	def method_missing(method, *args, &block)
		if method.to_s.include?("=")
			puts "equal sign method"
		
		method_name = method.to_s[0..-2]

			if @attributes.has_key?(method_name.to_sym)
			@attributes[method_name.to_sym] = args[0]
			end
		elsif !method.to_s.include?("=")
			@attributes[method]
		else
			super
		end
	end
end


cat = Base.new([:name, :breed])
person = Base.new([:name, :address])

cat.update_attributes ({:breed => "tabby"})

cat.name = "kittie"
person.address = "555 somewhere ave, fakeville"
puts cat.name
puts cat.breed
puts person.address
