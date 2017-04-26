class String
define_method(:anagrammer) do |second|

  if self=~(/[aeiouy]/)
    puts "Yummers, looks like you found a tasty word!"
    if (self.chars.sort.join() == second.chars.sort.join())
      puts "Yummm! You have found a tasty anagram."
      if small_letters_only = self.gsub(/([[:punct:]])/, '').downcase()
          no_space = small_letters_only.gsub(/\s+/, "") # mashes words together
          backwards = no_space.reverse() # palindrome
          backwards
        puts "is a palindrome too!"

  else
    puts "How can you spell a word if you have eaten all of the vowels?"
      end
    end
  end
end
end
