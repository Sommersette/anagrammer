require('rspec')
require('anagram')

describe() do

  it("changes any uppercase letter to lowercase") do
    expect(("DAD").anagrammer).to(eq("dad"))
  end
end
