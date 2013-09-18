class Foo
	def bar
		puts "in bar"
		foo2
	end

	def baz
		puts "in baz"
	end

	private

	def foo2
		puts "in foo2"
	end
end

f = Foo.new
f.bar
f.baz
f.foo2
