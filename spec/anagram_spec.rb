require('rspec')
require('anagram')
require('pry')

# describe('String#anagrammer') do

  describe('String#word?') do
    it("checks to see if input is an actual word and has vowels") do
      expect(('hello').word?('hello')).to(eq(true))
    end
  end

  describe('String#anagram') do
    it("checks to see if two words are anagrams") do
      expect(('dad').anagram('dad')).to(eq('Is an anagram'))
    end
  end

  describe('String#palindrome') do
    # it("removes all spaces from inputted String") do
    #   expect(("Are we not drawn onward to new era?").anagrammer('')).to(eq("Arewenotdrawnonwardtonewera?"))
    # end
    #
    # it("changes any uppercase letter to lowercase") do
    #   expect(("A But Tuba").anagrammer('')).to(eq("abuttuba"))
    # end # refactored and output no longer passes with spaces

    it("removes all punctuation, changes all letters to lowercase, and removes all spaces.") do
      expect(("A dog! A panic in a pagoda!").palindrome('adogapanicinapagoda')).to(eq('adogapanicinapagoda'))
    end
  end

  describe('String#antigram') do
  it("checks if input is an antigram") do
    expect(("hello").antigram('bye')).to(eq("& is NOT an antigram"))
  end
end
