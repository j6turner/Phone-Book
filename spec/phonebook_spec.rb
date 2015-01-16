require('rspec')
require('phonebook')

describe("Contact") do

  # before do
  #   Contact.clear()
  # end
  #
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



end
