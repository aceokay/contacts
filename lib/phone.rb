class Phone
  attr_reader(:type, :area_code, :subscriber)
  @@numbers = []

  define_method(:initialize) do |attributes|
    @type = attributes.fetch(:type)
    @area_code = attributes.fetch(:area_code)
    @subscriber = attributes.fetch(:subscriber)
    @id = @@numbers.length() + 1
  end

  define_method(:save) do
    @@numbers.push(self)
  end

  define_singleton_method(:all) do
    @@numbers
  end

  define_singleton_method(:clear) do
    @@numbers = []
  end

  

end
