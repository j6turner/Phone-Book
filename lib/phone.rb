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
