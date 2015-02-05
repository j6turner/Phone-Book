class Phone

  @@numbers = []

  attr_reader(:type, :number, :id)

  define_method(:initialize) do |type, number|
    @type = type
    @number = number
    @id = @@numbers.length().+(1)
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

  define_singleton_method(:find) do |id|
    found_phone = nil
    @@numbers.each do |number|
      if number.id() == id.to_i()
        found_phone = number
      end
    end
    found_phone
  end

end
