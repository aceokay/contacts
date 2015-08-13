require('rspec')
require('mailing')
require('pry')

describe(Mailing) do

  before() do
    Mailing.clear()
  end

  describe('#street_address') do
    it('returns the house or apartment street address') do
      test_address = Mailing.new({:street_address => "5555 Ferry St.", :city => "Seattle", :state => "Washington", :zip => 98682})
      expect(test_address.street_address()).to(eq("5555 Ferry St."))
    end
  end

  describe('#city') do
    it('returns the house or apartment city') do
      test_address = Mailing.new({:street_address => "5555 Ferry St.", :city => "Seattle", :state => "Washington", :zip => 98682})
      expect(test_address.city()).to(eq("Seattle"))
    end
  end

  describe('#state') do
    it('returns the house or apartment state') do
      test_address = Mailing.new({:street_address => "5555 Ferry St.", :city => "Seattle", :state => "Washington", :zip => 98682})
      expect(test_address.state()).to(eq("Washington"))
    end
  end

  describe('#zip') do
    it('returns the house or apartment zip') do
      test_address = Mailing.new({:street_address => "5555 Ferry St.", :city => "Seattle", :state => "Washington", :zip => 98682})
      expect(test_address.zip()).to(eq(98682))
    end
  end

  describe('#save') do
    it('saves a given contact to the contact array') do
      test_address = Mailing.new({:street_address => "5555 Ferry St.", :city => "Seattle", :state => "Washington", :zip => 98682})
      test_address.save()
      expect(Mailing.all()).to(eq([test_address]))
    end
  end

  describe('.all') do
    it('returns all addresses in the Mailing class array') do
      expect(Mailing.all()).to(eq([]))
    end
  end

  describe('.clear') do
    it('empties the Mailing class array') do
      test_address = Mailing.new({:street_address => "5555 Ferry St.", :city => "Seattle", :state => "Washington", :zip => 98682})
      test_address.save()
      test_address2 = Mailing.new({:street_address => "676 SE 5th Ave", :city => "Canby", :state => "Oregon", :zip => 97013})
      test_address2.save()
      expect(Mailing.clear()).to(eq([]))
    end
  end

  describe('#id') do
    it('returns the id of a contact') do
      test_address = Mailing.new({:street_address => "5555 Ferry St.", :city => "Seattle", :state => "Washington", :zip => 98682})
      test_address.save()
      test_address2 = Mailing.new({:street_address => "676 SE 5th Ave", :city => "Canby", :state => "Oregon", :zip => 97013})
      test_address2.save()
      expect(test_address2.id()).to(eq(2))
    end
  end

  describe('.find') do
    it('takes a given id and returns the Mailing class item') do
      test_address = Mailing.new({:street_address => "5555 Ferry St.", :city => "Seattle", :state => "Washington", :zip => 98682})
      test_address.save()
      test_address2 = Mailing.new({:street_address => "676 SE 5th Ave", :city => "Canby", :state => "Oregon", :zip => 97013})
      test_address2.save()
      expect(Mailing.find(test_address2.id())).to(eq(test_address2))
    end
  end

end
