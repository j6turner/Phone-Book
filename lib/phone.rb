class Phone

  @@numbers = []

  attr_reader(:cell, :home, :work)

  define_method(:initialize) do |attributes|
    @cell = attributes.fetch(:cell)
    @home = attributes.fetch(:home)
    @work = attributes.fetch(:work)
  end

end
