class Contact
  attr_reader(:name, :job_title, :company, :id)
  @@contacts = []

  define_method(:initialize) do |attributes|
    @name = attributes.fetch(:name)
    @job_title = attributes.fetch(:job_title)
    @company = attributes.fetch(:company)
    @id = @@contacts.length() + 1
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

  define_singleton_method(:clear) do
    @@contacts = []
  end

  define_singleton_method(:all) do
    @@contacts
  end
end
