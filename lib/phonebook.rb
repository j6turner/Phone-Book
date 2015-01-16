class Contact

  @@contacts = []

  attr_reader(:name, :phone)

  define_method(:initialize) do |attributes|
    @name = attributes.fetch(:key_c1)
    @phone = attributes.fetch(:key_c2)
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



end
