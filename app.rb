require ('sinatra')
require ('sinatra/reloader')
also_reload('./lib/**/*.rb')
require ('./lib/contact')
require ('./lib/phone')

get('/') do
  @contacts = Contact.all()
  erb(:index)
end

post('/contacts') do
  name = params.fetch("name")
  Contact.new(name).save()
  redirect("/")
end

post('/clear') do
  Contact.clear()
  redirect("/")
end

post('/phonebook/:id') do
  type = params.fetch("type")
  number = params.fetch("number")
  @phone = Phone.new({ :type => type, :number => number })
  @contact_new = Contact.find(params.fetch("id").to_i())
  @contact.add_number(@phone)
  redirect("/contacts/#{contact_new}")
end

get('/contacts/:id') do
  @contact = Contact.find(params.fetch("id").to_i())
  @contacts = Contact.all()
  Phone.all(@contact).phone_numbers()
  erb(:contact)
end

get('/phonebook/:name') do
  found_contact = Contact.find(params.fetch("name"))
  @name = found_contact.name()
  erb(:contact)
end
