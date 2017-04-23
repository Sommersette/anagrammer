class String
define_method(:anagrammer) do
  lower = self.downcase()
    if (lower == lower.reverse())
      # puts lower.reverse.capitalize() +" is a palindrome."
    else
      # puts lower.capitalize() + " is not a palindrome."
    end
  end
end
