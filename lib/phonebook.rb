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



end
