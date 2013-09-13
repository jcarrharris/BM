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
		@attributes = attributes
	end
	

	def method_missing(method, *args, &block)
		method_name = method.to_s[0..-2].downcase
		name = method_name

		if @attributes.has_key?(name.to_sym)
			@attributes[name.to_sym] = args[0]
			puts @attributes.inspect
		end
	end
end


cat = Base.new([:name, :breed])
person = Base.new([:name, :address])

cat.name = "kittie"
person.address = "555 somewhere ave, fakeville"
