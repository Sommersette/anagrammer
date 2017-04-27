require('rspec')
require('anagram')
require('pry')

describe('String#anagrammer') do

  describe('String#anagrammer') do
    it("checks to see if input is an actual word and has vowels") do
      expect(('hello').anagrammer('hello')).to(eq(true))
    end
  end

  # describe('String#antigram')
  #   it('checks if input 1 and input 2 have 0 letters in common') do
  #     expect(('hi').antigram()).to(eq('bye'))
  #   end
  # end

  describe('String#anagram') do
    it("checks to see if two words are anagrams") do
      expect(('dad').anagram('dad')).to(eq(true))
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

    it("removes all punctuation, changes all lettes to lowercase, and removes all spaces.") do
      expect(("A dog! A panic in a pagoda!").anagrammer('adogapanicinapagoda')).to(eq(true))
    end
  end

  describe('String#antigram')
  it("checks if input is an antigram") do
    expect(("hello").anagrammer('bye')).to(eq(true))
  end
end
