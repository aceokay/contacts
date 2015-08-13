require('rspec')
require('email')

describe(Email) do

  before() do
    Email.clear()
  end

  describe('#email') do
    it('returns the email of a user') do
      test_email = Email.new({:email => "josuevalverde12@gmail.com", :type => "Gmail"})
      expect(test_email.email()).to(eq("josuevalverde12@gmail.com"))
    end
  end

  describe('#type') do
    it('returns the type of email') do
      test_email = Email.new({:email => "josuevalverde12@gmail.com", :type => "Gmail"})
      expect(test_email.type()).to(eq("Gmail"))
    end
  end

  describe('#save') do
    it('saves an email onto the Email array') do
      test_email = Email.new({:email => "josuevalverde12@gmail.com", :type => "Gmail"})
      expect(test_email.save()).to(eq([test_email]))
    end
  end

  describe('.all') do
    it('displays all the phone numbers in the Email array') do
      test_email = Email.new({:email => "josuevalverde12@gmail.com", :type => "Gmail"})
      test_email.save()
      test_email2 = Email.new({:email => "austinkincaid@pdx.edu", :type => "Portland State"})
      test_email2.save()
      expect(Email.all()).to(eq([test_email, test_email2]))
    end
  end

  describe('.clear') do
    it('empties the Email class array') do
      test_email = Email.new({:email => "josuevalverde12@gmail.com", :type => "Gmail"})
      test_email.save()
      test_email2 = Email.new({:email => "austinkincaid@pdx.edu", :type => "Portland State"})
      test_email2.save()
      expect(Email.clear()).to(eq([]))
    end
  end

  describe('#id') do
    it('returns the id of a contact') do
      test_email = Email.new({:email => "josuevalverde12@gmail.com", :type => "Gmail"})
      test_email.save()
      test_email2 = Email.new({:email => "austinkincaid@pdx.edu", :type => "Portland State"})
      test_email2.save()
      expect(test_email2.id()).to(eq(2))
    end
  end

  describe('.find') do
    it('takes a given id and returns the Email class item') do
      test_email = Email.new({:email => "josuevalverde12@gmail.com", :type => "Gmail"})
      test_email.save()
      test_email2 = Email.new({:email => "austinkincaid@pdx.edu", :type => "Portland State"})
      test_email2.save()
      expect(Email.find(test_email2.id())).to(eq(test_email2))
    end
  end
end
