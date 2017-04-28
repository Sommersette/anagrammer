require('rspec')
require('sinatra')
require('sinatra/reloader')
require('pry')
require('./lib/anagram')
also_reload('lib/**/*.rb')

get('/') do
  erb(:form)
end

get('/lexicon') do
  @word = params.fetch('input1').word('input2')
  @anagram =  params.fetch('input1').anagram('input2')
  @palindrome = params.fetch('input1').palindrome('input2')
  @antigram = params.fetch('input1').antigram('input2')
  erb(:words)
end
