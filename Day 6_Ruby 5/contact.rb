class Contact
	def initialize(name, email, notes="")
		@email = email
		@name = name
		@notes = notes
	end

	def name
		@name
	end

	def email
		@email
	end
	def notes
		@notes
	end
end
