require('rspec')
require('sinatra')
require('sinatra/reloader')
require('pry')
require('./lib/anagram')
also_reload('lib/**/*.rb')
#
# get('/') do
#   erb(:form)
# end
#
# get('/word') do
#   @result =  params.fetch('anagram').anagram()
#   erb(:words)
# end
