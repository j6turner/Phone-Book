require('rspec')
require('phone')

describe("Phone") do

  describe('#cell') do
    it("returns cell number from list") do
      test_phone = Phone.new({ :cell => "1112223333", :home => "2223334444", :work => "3334445555" })
      test_phone.save()
      expect(test_phone.cell()).to(eq("1112223333"))
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
