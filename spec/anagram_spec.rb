require('rspec')
require('anagram')

describe('String#anagrammer') do

  it("changes any uppercase letter to lowercase") do #to lowercase letter test
    expect(("DaD").anagrammer).to(eq("dad"))
  end

  it("checks if word or words are the same forwards and backwards") do #.reverse .strip
    expect(("Racecar").anagrammer).to(eq("racecar"))
  end

  # it("Check if two letters are identical") do # <=> .sort .length and .strip!
  #   expect(("d").anagrammer).to(eq("d"))
  # end

end
