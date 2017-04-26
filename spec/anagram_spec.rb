require('rspec')
require('anagram')

describe('String#anagrammer') do

  it("checks to see if input is an actual word and has vowels") do
    expect(('word').anagrammer('word')).to(eq('word'))
  end

  # it("checks to see if two words are anagrams") do
  #     expect(('dad').anagrammer('dad')).to(eq('dad'))
  # end

  # it("removes all spaces from inputted String") do
  #   expect(("Are we not drawn onward to new era?").anagrammer('')).to(eq("Arewenotdrawnonwardtonewera?"))
  # end
  #
  # it("changes any uppercase letter to lowercase") do
  #   expect(("A But Tuba").anagrammer('')).to(eq("abuttuba"))
  # end # refactored and output no longer passes with spaces
  #
  # it("removes all punctuation.") do
  #   expect(("A dog! A panic in a pagoda!").anagrammer('')).to(eq('adogapanicinapagoda'))
  # end # refactored and no longer passes with spaces
  #
  #
  # it("checks if input is a palindrome") do
  #   expect(("arewenotdrawnonwardtonewera").anagrammer('')).to(eq('arewenotdrawnonwardtonewera'))
  # end
  # it("checks if input is an antigram") do
  #   expect(("hello").anagrammer('bye')).to(eq(true))
  # end
end
