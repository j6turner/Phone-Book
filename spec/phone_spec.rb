require('rspec')
require('contact')
require('phone')

describe("Phone") do

  describe('#type') do
    it("returns number type") do
      test_phone = Phone.new({ :type => "cell" })
      test_phone.save()
      expect(test_phone.type()).to(eq("cell"))
    end
  end

  describe('#home') do
    it("returns home number from list") do
      test_phone = Phone.new({ :cell => "1112223333", :home => "2223334444", :work => "3334445555" })
      test_phone.save()
      expect(test_phone.home()).to(eq("2223334444"))
    end
  end

  describe('#work') do
    it("returns work number from list") do
      test_phone = Phone.new({ :cell => "1112223333", :home => "2223334444", :work => "3334445555" })
      test_phone.save()
      expect(test_phone.work()).to(eq("3334445555"))
    end
  end

end
