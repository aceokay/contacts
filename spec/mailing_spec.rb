require('rspec')
require('mailing')

describe(Mailing) do

  # before() do
  #   Mailing.clear()
  # end

  describe('#number') do
    it('returns the house or apartment number') do
      test_address = Mailing.new({:street_address => "5555 Ferry St.", :city => "Seattle", :state => "Washington", :zip => 98682})
      expect(test_address.street_address()).to(eq("5555 Ferry St."))
    end
  end
end
