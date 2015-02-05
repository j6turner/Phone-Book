require('rspec')
require('phone')
require('contact')
require('pry')

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
      test_phone = Phone.new("cell", "1112223333")
      test_phone.save()
      expect(Phone.all()).to(eq([test_phone]))
    end
  end

  describe(".clear") do
    it("clears all entries") do
      test_phone = Phone.new("cell", "1112223333")
      test_phone.save()
      Phone.clear()
      expect(Phone.all()).to(eq([]))
    end
  end

  describe('#id') do
    it('returns phone id') do
      test_phone = Phone.new("cell", "1112223333")
      test_phone.save()
      expect(test_phone.id()).to(eq(1))
    end
  end

  describe('.find') do
    it("locates phone by id") do
      test_phone = Phone.new("cell", "1112223333")
      test_phone.save()
      test_phone2 = Phone.new("home", "2223334444")
      test_phone2.save()
      expect(Phone.find(test_phone2.id())).to(eq(test_phone2))
    end
  end

end
