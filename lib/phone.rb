class Phone

  @@numbers = []

  attr_reader(:type, :number)

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

  define_method(:clear) do
    @@numbers = []
  end

  define_method(:type) do
    @type
  end

  define_method(:number) do
    @number
  end

  define_method(:id) do
    @id
  end

  define_singleton_method(:find) do |id|
    found_number = nil
    @@numbers.each do |number|
      if number.id() == id.to_i()
        found_number = number
      end
    end
    found_number
  end

end
