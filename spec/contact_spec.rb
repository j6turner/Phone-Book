require('rspec')
require('contact')

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
      test_contact = Contact.new({:key_c => "Axyll Adams"})
      test_contact.save()
      expect(Contact.all()).to(eq([test_contact]))
    end
  end

  describe(".clear") do
    it("clears all entries") do
      test_contact = Contact.new({:key_c => "Axyll Adams"
        test_contact.save()
        Contact.clear()
        expect(Contact.all()).to(eq([]))
      end
    end

    describe('#name') do
      it("returns contact name from contact list") do
        test_contact = Contact.new({:key_c => "Axyll Adams"})
        test_contact.save()
        expect(test_contact.name()).to(eq("Axyll Adams"))
      end
    end

    describe()

    describe('.search_name') do
      it("locates the contact by name") do
        test_contact = Contact.new({:key_c => "Axyll Adams"})
        test_contact.save()
        test_contact2 = Contact.new({:key_c => "Boris Blue "})
        test_contact2.save()
        expect(Contact.search_name("Boris Blue")).to(eq(test_contact2))
      end
    end

  end
