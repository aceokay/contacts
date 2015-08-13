require('sinatra')
require('sinatra/reloader')
require('./lib/contacts')
require('./lib/phone')
require('./lib/mailing')
require('./lib/email')
require('pry')
also_reload('/lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/contacts/new') do
  erb(:contacts_form)
end

get('/contacts') do
  @contacts = Contact.all()
  erb(:contacts)
end

post('/contacts') do
  name = params.fetch('name')
  job_title = params.fetch('job')
  company = params.fetch('company')
  @contacts = Contact.new({:name => name, :job_title => job_title, :company => company})
  @contacts.save()
  @contacts = Contact.all()
  @id = params.fetch('id').to_i().+(1)
  erb(:contacts)
end

get('/contacts/:id/info/new') do
  @contact = Contact.find(params.fetch('id').to_i())
  erb(:info_form)
end

get('/contacts/:id/info') do
  @contact = Contact.find(params.fetch('id').to_i())
  erb(:contacts_info)
end

post('/contacts/:id/info') do
  @contact = Contact.find(params.fetch('id').to_i())
  type = params.fetch('type')
  area_code = params.fetch('area_code')
  subscriber = params.fetch('subscriber')
  phone = Phone.new(:type => type, :area_code => area_code, :subscriber => subscriber)
  @contact.add_number(phone)
  email = params.fetch('email')
  mail_type = params.fetch('mail_type')
  email = Email.new(:email => email, :type => type)
  @contact.add_email(email)
  street = params.fetch('street')
  city = params.fetch('city')
  state = params.fetch('state')
  zip = params.fetch('zip')
  address = Mailing.new({:street_address => street, :city => city, :state => state, :zip => zip})
  @contact.add_address(address)
  erb(:contacts_info)
end
