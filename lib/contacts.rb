class Contact
  attr_reader(:name, :job_title, :company, :id)
  @@contacts = []

  define_method(:initialize) do |attributes|
    @name = attributes.fetch(:name)
    @job_title = attributes.fetch(:job_title)
    @company = attributes.fetch(:company)
    @id = @@contacts.length() + 1
    @phone_numbers = []
    @emails = []
    @addresses = []
  end

  define_method(:first_name) do
    @name.split(" ")[0]
  end

  define_method(:last_name) do
    @name.split(" ").last()
  end

  define_method(:save) do
    @@contacts.push(self)
  end

  define_method(:add_number) do |number|
    @phone_numbers.push(number)
  end

  define_method(:add_email) do |email|
    @emails.push(email)
  end

  define_method(:add_address) do |address|
    @addresses.push(address)
  end

  define_singleton_method(:clear) do
    @@contacts = []
  end

  define_singleton_method(:all) do
    @@contacts
  end

  define_singleton_method(:find) do |id|
    @@contacts[id - 1]
  end

end
