class String
  define_method(:anagrammer) do |second|
    if self.scan(/[aeiouy]/).count()>=1 == second.scan(/[aeiouy]/).count()>=1
      true
    else
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
    first = []
    second = []
    self << 1
    second << 2
    if first & second == empty
      false
    else
      true
    end
  end
end
