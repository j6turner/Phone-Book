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

get('/contacts/:id') do
  @contact = Contact.find(params.fetch("id").to_i())
  @contacts = Contact.all()
  Phone.all(@contact).phone_numbers()
  erb(:contact)
end

post('/phonebook/:id') do
  cell = params.fetch("cell")
  home = params.fetch("home")
  work = params.fetch("work")
  @phone = Phone.new({ :cell => cell, :home => home, :work => work })
  @contact_new = Contact.find(params.fetch("id").to_i())
  @contact.add_number(@phone)
  redirect("/contacts/#{contact_new}")
end

get('/phonebook/:name') do
  found_contact = Contact.find(params.fetch("name"))
  @name = found_contact.name()
  erb(:contact)
end
