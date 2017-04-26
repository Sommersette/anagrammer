class String
  define_method(:anagrammer) do |second|
  if self.scan(/[aeiouy]/).join() && second.scan(/[aeiouy]/).join()
   print "Yummers, looks like you found a tasty word!"
   true
  else
    print "How can you spell a word if you have eaten all of the vowels?"
    false
  end
end
end

#   if (self.chars.sort.join() == second.chars.sort.join())
#       puts "Yummm! You have found a tasty anagram."
#     else
#       puts "Not an anagram, but what a jumble of letters you have. "
#   end
# end

  #     if small_letters_only = self.gsub(/([[:punct:]])/, '').downcase()
  #         no_space = small_letters_only.gsub(/\s+/, "") # mashes words together
  #         backwards = no_space.reverse() # palindrome
  #         backwards
  #       else
  #         falcs
  #     end
  #       puts "is a palindrome too!"

end
