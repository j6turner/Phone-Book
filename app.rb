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
  erb(:contact)
end

post('/number') do
  type = params.fetch("type")
  number = params.fetch("number")
  @phone = Phone.new("type", "number")
  @phone.save()
  @contact = Contact.find(params.fetch("id").to_i())
  @contacts = Contact.all()
  @contact.add_number(phone)
  redirect back
end
