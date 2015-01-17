class Contact

  @@contacts = []

  attr_reader(:name)

  define_method(:initialize) do |attributes|
    @name = attributes.fetch(:key_c)
  end

  define_singleton_method(:all) do
    @@contacts
  end

  define_method(:save) do
    @@contacts.push(self)
  end

  define_singleton_method(:clear) do
    @@contacts = []
  end

  define_singleton_method(:search_name) do |contact_name|
    found_contact = nil
    @@contacts.each() do |contact|
      if contact.name().include?(contact_name)
        found_contact = contact
      end
    end
    found_contact
  end

end



class Phone

  @@numbers = []

  attr_reader(:cell, :home, :work)

  define_method(:initialize) do |attributes|
    @cell = attributes.fetch(:key_ph1)
    @home = attributes.fetch(:key_ph2)
    @work = attributes.fetch(:key_ph3)
  end

  define_singleton_method(:all) do
    @@numbers
  end

  define_method(:save) do
    @@numbers.push(self)
  end

  define_singleton_method(:clear) do
    @@numbers = []
  end

  define_singleton_method(:search_numbers) do |type|
    found_number = nil
    @@numbers.each() do |number|
      if number.cell() == type
        found_number = number.cell()
      elsif number.home() == type
        found_number = number.home()
      elsif number.work() == type
        found_number = number.work()
      else
        "NO MATCH"
      end
    end
    found_number
  end

end
