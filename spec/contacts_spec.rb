require('rspec')
require('contacts')

describe(Contact) do
  describe('#name') do
    it('returns the first name of the contact') do
      test_contact = Contact.new({:name => "Austin Kincaid", :job_title => "Senior Developer", :company => "Acme"})
      expect(test_contact.name()).to(eq("Austin Kincaid"))
    end
  end

  describe('#job_title') do
    it('returns the job title of the contact') do
      test_contact = Contact.new({:name => "Austin Kincaid", :job_title => "Senior Developer", :company => "Acme"})
      expect(test_contact.job_title()).to(eq("Senior Developer"))
    end
  end

  describe('#company') do
    it('returns the company of the contact') do
      test_contact = Contact.new({:name => "Austin Kincaid", :job_title => "Senior Developer", :company => "Acme"})
      expect(test_contact.company()).to(eq("Acme"))
    end
  end

  describe('#first_name') do
    it('returns the first name of contact') do
      test_contact = Contact.new({:name => "Austin Kincaid", :job_title => "Senior Developer", :company => "Acme"})
      expect(test_contact.first_name()).to(eq("Austin"))
    end
  end

  describe('#last_name') do
    it('returns the last name of contact') do
      test_contact = Contact.new({:name => "Austin Kincaid", :job_title => "Senior Developer", :company => "Acme"})
      expect(test_contact.last_name()).to(eq("Kincaid"))
    end
  end

end
