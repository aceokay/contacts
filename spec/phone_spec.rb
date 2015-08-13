require('rspec')
require('phone')

describe(Phone) do

  before() do
    Phone.clear()
  end

  describe('#type') do
    it('returns the type of a phone number') do
      test_number = Phone.new({:type => "cell", :area_code => '503', :subscriber => '555-5000'})
      expect(test_number.type()).to(eq("cell"))
    end
  end

  describe('#area_code') do
    it('returns the area code of a phone number') do
      test_number = Phone.new({:type => "cell", :area_code => '503', :subscriber => '555-5000'})
      expect(test_number.area_code()).to(eq("503"))
    end
  end

  describe('#subscriber') do
    it('returns the subscriber a phone number') do
      test_number = Phone.new({:type => "cell", :area_code => '503', :subscriber => '555-5000'})
      expect(test_number.subscriber()).to(eq("555-5000"))
    end
  end

  describe('#save') do
    it('saves a phone number onto the Phone array') do
      test_number = Phone.new({:type => "cell", :area_code => '503', :subscriber => '555-5000'})
      expect(test_number.save()).to(eq([test_number]))
    end
  end

  describe('.all') do
    it('displays all the phone numbers in the Phone array') do
      test_number = Phone.new({:type => "cell", :area_code => '503', :subscriber => '555-5000'})
      test_number.save()
      test_number2 = Phone.new({:type => "landline", :area_code => '971', :subscriber => '123-4567'})
      test_number2.save()
      expect(Phone.all()).to(eq([test_number, test_number2]))
    end
  end
end
