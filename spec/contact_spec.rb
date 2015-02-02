require('rspec')
require('contact')
require('phone')

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
    it("saves entry to @@contacts") do
      test_contact = Contact.new({ :name => "Axyll Adams", :phone_numbers => [test_phone] })
      test_phone = Phone.new({ :cell => "1112223333", :home => "2223334444", :work => "3334445555" })
      test_contact.save()
      expect(Contact.all()).to(eq([test_contact]))
    end
  end

  describe(".clear") do
    it("clears all entries from @@contacts") do
      test_contact = Contact.new({ :name => "Axyll Adams", :phone_numbers => [test_phone] })
      test_phone = Phone.new({ :cell => "1112223333", :home => "2223334444", :work => "3334445555" })
      test_contact.save()
      Contact.clear()
      expect(Contact.all()).to(eq([]))
    end
  end

    describe('#name') do
      it("returns contact name") do
        test_contact = Contact.new({ :name => "Axyll Adams", :phone_numbers => [test_phone] })
        test_phone = Phone.new({ :cell => "1112223333", :home => "2223334444", :work => "3334445555" })
        test_contact.save()
        expect(test_contact.name()).to(eq("Axyll Adams"))
      end
    end

    describe('#phone_numbers') do
      it('returns contact phone numbers') do
        test_contact = Contact.new({ :name => "Axyll Adams", :phone_numbers => [test_phone] })
        test_phone = Phone.new({ :cell => "1112223333", :home => "2223334444", :work => "3334445555" })
        test_contact.save()
        expect(test_contact.phone_numbers()).to(eq([test_phone]))
      end
    end

    describe('#id') do
      it('returns contact id') do
        test_contact = Contact.new({ :name => "Axyll Adams", :phone_numbers => [test_phone] })
        test_phone = Phone.new({ :cell => "1112223333", :home => "2223334444", :work => "3334445555" })
        test_contact.save()
        expect(test_contact.id()).to(eq(1))
      end
    end

    describe('.find') do
      it("locates contact by id") do
        test_contact = Contact.new({ :name => "Axyll Adams", :phone_numbers => [test_phone] })
        test_phone = Phone.new({ :cell => "1112223333", :home => "2223334444", :work => "3334445555" })
        test_contact.save()
        test_contact2 = Contact.new({ :name => "Boris Blue", :phone_numbers => [test_phone2] })
        test_phone2 = Phone.new({ :cell => "4445556666", :home => "5556667777", :work => "6667778888" })
        test_contact2.save()
        expect(Contact.find(test_contact2.(id())).to(eq(test_contact2))
      end
    end

  end
