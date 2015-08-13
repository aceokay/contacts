class Contact
  attr_reader(:name, :job_title, :company)

  define_method(:initialize) do |attributes|
    @name = attributes.fetch(:name)
    @job_title = attributes.fetch(:job_title)
    @company = attributes.fetch(:company)
  end
end
