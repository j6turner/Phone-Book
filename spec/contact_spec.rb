require('rspec')
require('contact')
require('phone')
require('pry')

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
      test_contact = Contact.new("Axyll Adams")
      test_contact.save()
      expect(Contact.all()).to(eq([test_contact]))
    end
  end

  describe(".clear") do
    it("clears all entries") do
      test_contact = Contact.new("Axyll Adams")
      test_contact.save()
      Contact.clear()
      expect(Contact.all()).to(eq([]))
    end
  end

  describe('.find') do
    it("locates contact by id") do
      test_contact = Contact.new("Axyll Adams")
      test_contact.save()
      test_contact2 = Contact.new("Boris Blue")
      test_contact2.save()
      expect(Contact.find(test_contact2.id())).to(eq(test_contact2))
    end
  end

    describe('#id') do
      it('returns contact id') do
        test_contact = Contact.new("Axyll Adams")
        test_contact.save()
        expect(test_contact.id()).to(eq(1))
      end
    end

    describe('#add_number') do
      it('adds phone number to contact') do
        test_number = Phone.new("cell", "1112223333")
        test_number.save()
        test_contact = Contact.new("Axyll Adams")
        test_contact.save()
        test_contact.add_number(test_number)
        expect(test_contact.phone_numbers()).to(eq([test_number]))
      end
    end

  end
