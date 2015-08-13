class Mailing

  attr_reader(:street_address, :city, :state, :zip, :id)
  @@addresses = []

  define_method(:initialize) do |attributes|
    @street_address = attributes.fetch(:street_address)
    @city = attributes.fetch(:city)
    @state = attributes.fetch(:state)
    @zip = attributes.fetch(:zip)

    @id = @@addresses.length() + 1
  end

  define_method(:save) do
    @@addresses.push(self)
  end

  define_singleton_method(:all) do
    @@addresses
  end

  define_singleton_method(:clear) do
    @@addresses = []
  end

  define_singleton_method(:find) do |id|
    @@addresses[id - 1]
  end
end
