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
  @word = params.fetch('input2').word('input1')
  @anagram =  params.fetch('input2').anagram('input1')
  @antigram = params.fetch('input2').antigram('input1')
  @palindrome = params.fetch('input2').palindrome('input1')

  erb(:words)
end
