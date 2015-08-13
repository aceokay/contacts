require('rspec')
require('contacts')

describe(Contact) do
  describe('#first_name') do
    it('returns the first name of the contact') do
      test_contact = Contact.new({:name => "Austin Kincaid", :job_title => "Senior Developer", :company => "Acme"})
      expect(test_contact.name()).to(eq("Austin Kincaid"))
    end
  end
end
