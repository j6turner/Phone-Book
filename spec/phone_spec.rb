require('rspec')
require('phone')

describe("Phone") do

  before do
    Phone.clear()
  end

  describe(".all") do
    it("is initially empty") do
      expect(Phone.all()).to(eq([]))
    end
  end

  describe("#save") do
    it("saves entry") do
      test_phone = Phone.new({:key_ph1 => "1112223333", :key_ph2 => "2223334444", :key_ph3 => "3334445555"})
      test_phone.save()
      expect(Phone.all()).to(eq([test_phone]))
    end
  end

  describe(".clear") do
    it("clears all entries") do
      test_phone = Phone.new({:key_ph1 => "1112223333", :key_ph2 => "2223334444", :key_ph3 => "3334445555"})
      test_phone.save()
      Phone.clear()
      expect(Phone.all()).to(eq([]))
    end
  end

  describe('#cell') do
    it("returns cell number from list") do
      test_phone = Phone.new({:key_ph1 => "1112223333", :key_ph2 => "2223334444", :key_ph3 => "3334445555"})
      test_phone.save()
      expect(test_phone.cell()).to(eq("1112223333"))
    end
  end

  describe('#home') do
    it("returns home number from list") do
      test_phone = Phone.new({:key_ph1 => "1112223333", :key_ph2 => "2223334444", :key_ph3 => "3334445555"})
      test_phone.save()
      expect(test_phone.home()).to(eq("2223334444"))
    end
  end

  describe('#work') do
    it("returns work number from list") do
      test_phone = Phone.new({:key_ph1 => "1112223333", :key_ph2 => "2223334444", :key_ph3 => "3334445555"})
      test_phone.save()
      expect(test_phone.work()).to(eq("3334445555"))
    end
  end


end
