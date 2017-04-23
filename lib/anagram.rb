class String
define_method(:anagrammer) do
    small_letters_only = self.gsub(/[[:punct:]]/, '').downcase()
    no_space = small_letters_only.gsub(/\s+/, "")
    if (no_space == no_space.reverse)
      puts "is a palindrome!"
    else
      puts "is not a palindrome"
    end
  end
end
