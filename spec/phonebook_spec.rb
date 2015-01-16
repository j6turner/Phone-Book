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
      Contact.clear()
      expect(Contact.all()).to(eq([]))
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
