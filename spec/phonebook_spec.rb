require('rspec')
require('phonebook')

describe("Contact") do

  before do
    Contact.clear()
  end

  describe(".all") do
    it("is initially empty") do
      expect(Contact.all()).to(eq([]))
    end
  end

  describe("#save") do
    it("saves entry") do
      test_contact = Contact.new({:key_c1 => "Axyll Adams", :key_c2 => "1234567890"})
      test_contact.save()
      expect(Contact.all()).to(eq([test_contact]))
    end
  end

  describe(".clear") do
    it("clears all entries") do
      test_contact = Contact.new({:key_c1 => "Axyll Adams", :key_c2 => "1234567890"})
      test_contact.save()
      Contact.clear()
      expect(Contact.all()).to(eq([]))
    end
  end

  describe('#name') do
    it("returns name from list") do
      test_contact = Contact.new({:key_c1 => "Axyll Adams", :key_c2 => "1234567890"})
      test_contact.save()
      expect(test_contact.name()).to(eq("Axyll Adams"))
    end
  end

  describe('.search_name') do
    it("locates the contact by name") do
      test_contact = Contact.new({:key_c1 => "Axyll Adams", :key_c2 => "1234567890"})
      test_contact.save()
      test_contact2 = Contact.new({:key_c1 => "Boris Blue ", :key_c2 => "3456789012"})
      test_contact2.save()
      expect(Contact.search_name("Boris Blue")).to(eq(test_contact2))
    end
  end

end




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
