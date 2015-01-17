require ('sinatra')
require ('sinatra/reloader')
also_reload('./lib/**/*.rb')
require ('./lib/phonebook')

get('/') do
  @contacts = Contact.all()
  @numbers = Phone.all()
  erb(:index)
end

post('/phonebook') do
  @name = params.fetch("name")
  @cell = params.fetch("cell")
  @home = params.fetch("home")
  @work = params.fetch("work")
  erb(:results)
end

post('/clear') do
  Contact.clear()
  Phone.clear()
  redirect('/')
end
