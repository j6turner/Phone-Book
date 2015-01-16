require ("sinatra")
require ("sinatra/reloader")
also_reload("./lib/**/*.rb")
require ("./lib/phonebook.rb")

get('/') do

end

post('/phonebook') do

end

get('/results') do

end

get('//:') do

end
