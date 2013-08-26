require "./lib/contact"

describe Contact do 
	is "should respond to name" do
		contact = Contact.new "Chris"
		expect(Contact.name).to eq("Chris")
	end

	it "should remember a name" do
		contact = Contact.new "Bob", "bob@somewhere.com"
		expect(.contact.name).to eq("Bob")
	end
	it "should remember email address" do
		contact = Contact.new "Bob", "bob@somewhere.com"
	end
end
