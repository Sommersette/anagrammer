require('rspec')
require('sinatra')
require('sinatra/reloader')
require('pry')
require('./lib/anagram')
also_reload('lib/**/*.rb')

get('/') do
  erb(:form)
end

get('/word') do
  params.fetch('input1')
  params.fetch('input2')
  @result = "".anagrammer('anagrammer')
  erb(:words)
end
