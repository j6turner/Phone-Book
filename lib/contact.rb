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
