class Contact

  @@contacts = []

  attr_reader(:name, :phone_numbers, :id)

  define_method(:initialize) do |name|
    @name = name
    @phone_numbers = []
    @id = @@contacts.length().+(1)
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

  define_singleton_method(:find) do |id|
    found_contact = nil
    @@contacts.each() do |contact|
      if contact.id() == id.to_i()
        found_contact = contact
      end
    end
    found_contact
  end

  define_method(:add_number) do |number|
    @phone_numbers.push(number)
  end

end
