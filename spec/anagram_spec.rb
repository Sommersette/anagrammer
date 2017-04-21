require('rspec')
require('anagram')

describe('String#anagrammer') do
  it("changes any uppercase letter to lowercase") do
    expect("D".anagrammer()).to(eq(d))
  end
end
