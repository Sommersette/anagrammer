class String
  # define_method(:anagrammer) do |second|

  define_method(:word) do |second|
    if self.scan(/[aeiouy]/).count()>=1 == second.scan(/[aeiouy]/).count()>=1
     print "Yummers, looks like you found a tasty word!"
     true
    else
      print "How can you spell a word if you have eaten all of the vowels?"
      false
    end
  end

  define_method(:anagram)  do |second|
    if (self.chars.sort() == second.chars.sort())
        true
      else
        false
    end
  end

  define_method(:palindrome) do |second|
    if small_letters_only = self.gsub(/([[:punct:]])/, '').downcase()
      no_space = small_letters_only.gsub(/\s+/, "") # mashes words together
      backwards = no_space.reverse() # palindrome
      backwards
    else
      false
    end
  end

    define_method(:antigram) do |second|
    if self.chars(/[[intersect]]/) != second.scan(/[[intersect]]/)
      true
    else
      false
    end
  end
end
