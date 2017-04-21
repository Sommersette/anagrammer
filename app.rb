require('rspec')
require('sinatra')
require('sinatra/reloader')
require('pry')
require('./lib/anagram')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/words') do
  @result = anagrammer(params.fetch('anagram'))
  erb(:words)
end
