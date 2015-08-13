require('rspec')
require('contacts')

describe(Contact) do
  describe('#first_name') do
    it('returns the first name of the contact') do
      test_contact = Contact.new({:first_name => "Austin", :last_name => "Kincaid", :job_title => "Senior Developer", :company => "Acme"})
      expect(test_contact.first_name()).to(eq("Austin"))
    end
  end
end
