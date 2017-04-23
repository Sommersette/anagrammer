require('rspec')
require('anagram')

describe('String#anagrammer') do

  # it("changes any uppercase letter to lowercase") do #to lowercase letter test
  #   expect(("A But Tuba").anagrammer).to(eq('a but tuba'))
  # end
  #
  # it("removes all punctuation.") do #to lowercase letter test
  #   expect(("A dog! A panic in a pagoda!").anagrammer).to(eq('a dog a panic in a pagoda'))
  # end

  it("removes all spaces from inputted String") do
    expect(("Are we not drawn onward to new era?").anagrammer).to(eq('arewenotdrawnonwardtonewera'))
  end

  it("checks if input is a palindrome") do
    expect(("arewenotdrawnonwardtonewera").anagrammer).to(eq('arewenotdrawnonwardtonewera'))
  end



  # it("checks if word or words are the same letter order forwards and backwards") do #.reverse & regex
  #   expect(("A but Tuba").anagrammer).to(eq('a but tuba'))
  # end

  # it("Check if two letters are identical") do # <=> .sort .length and .strip!
  #   expect(("d").anagrammer).to(eq("d"))
  # end

end
