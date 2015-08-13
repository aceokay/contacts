require('rspec')
require('contacts')

describe(Contact) do

  before() do
    Contact.clear()
  end

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

  describe('#save') do
    it('saves a given contact to the contact array') do
      test_contact = Contact.new({:name => "Austin Kincaid", :job_title => "Senior Developer", :company => "Acme"})
      test_contact.save()
      expect(Contact.all()).to(eq([test_contact]))
    end
  end

  describe('.all') do
    it('returns all contacts in the Contact class array') do
      expect(Contact.all()).to(eq([]))
    end
  end

  describe('.clear') do
    it('empties the Contact class array') do
      test_contact = Contact.new({:name => "Austin Kincaid", :job_title => "Senior Developer", :company => "Acme"})
      test_contact.save()
      test_contact2 = Contact.new({:name => "Josue Valverde", :job_title => "Senior Developer", :company => "Acme"})
      test_contact2.save()
      expect(Contact.clear()).to(eq([]))
      end
  end

  describe('#id') do
    it('returns the id of a contact') do
      test_contact = Contact.new({:name => "Austin Kincaid", :job_title => "Senior Developer", :company => "Acme"})
      test_contact.save()
      test_contact2 = Contact.new({:name => "Josue Valverde", :job_title => "Senior Developer", :company => "Acme"})
      test_contact2.save()
      test_contact3 = Contact.new({:name => "Mike Bunker", :job_title => "Senior Developer", :company => "Acme"})
      test_contact3.save()
      expect(test_contact2.id()).to(eq(2))
    end
  end

  describe('.find') do
    it('takes a given id and returns the Contact class item') do
      test_contact = Contact.new({:name => "Austin Kincaid", :job_title => "Senior Developer", :company => "Acme"})
      test_contact.save()
      test_contact2 = Contact.new({:name => "Josue Valverde", :job_title => "Senior Developer", :company => "Acme"})
      test_contact2.save()
      test_contact3 = Contact.new({:name => "Mike Bunker", :job_title => "Senior Developer", :company => "Acme"})
      test_contact3.save()
      expect(Contact.find(test_contact3.id())).to(eq(test_contact3))
    end
  end
end
