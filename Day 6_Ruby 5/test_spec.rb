require "./lib/contact"

describe Contact do
let(:contact) { Contact.new "Bob", "bob@somewhere.com"}

	it "should remember a name" do
		expect(contact.name).to eq("Bob")
	end

	it "should remember email address" do
		expect(contact.name).to eq ("bob@somewhere.com")
	end

	it "should remember notes" do
		expect (contact.name).to eq("note, note, note")
	end

	it "should allow notes to be optional"
end
