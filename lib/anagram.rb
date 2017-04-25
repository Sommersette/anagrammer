class String
define_method(:anagrammer) do |second|

  if (self.scan(/[aeiou]/).count >= 1 && second.scan(/[aeiou]/).count >= 1)
  else
    puts "How can you spell a word if you have eaten all of the vowels?"
  end

  if (self.chars.sort.join() == second.chars.sort.join())
    puts "Yummm! You have found a tasty anagram."
  else
    puts "Move your spoon around a little and you'll get it next time."
  end

    small_letters_only = self.gsub(/([[:punct:]])/, '').downcase()
    no_space = small_letters_only.gsub(/\s+/, "") # mashes words together
    backwards = no_space.reverse() # palindrome
    backwards
    
  end
end
