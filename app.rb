require('sinatra')
require('sinatra/reloader')
require('./lib/anagram')
also_reload('lib/**/*.rb')

get('/') do
  erb(:form)
end

get('/lexicon') do
  input1 = params.fetch('input1')
  input2 = params.fetch('input2')
  @word = input1.word(input2)
  @anagram =  input1.anagram(input2)
  @palindrome = input1.palindrome(input2)
  @antigram = input1.antigram(input2)
  erb(:words)
end
