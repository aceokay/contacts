class Email
  attr_reader(:email, :type)
  @@emails = []

  define_method(:initialize) do |attributes|
    @email = attributes.fetch(:email)
    @type = attributes.fetch(:type)
    @id = @@emails.length() + 1
  end

  define_method(:save) do
    @@emails.push(self)
  end

  define_singleton_method(:all) do
    @@emails
  end

  define_singleton_method(:clear) do
    @@emails = []
  end

  define_method(:id) do
    @id
  end

  define_singleton_method(:find) do |id|
    @@emails[id-1]
  end

end
