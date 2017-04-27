class String
# checks for vowels
  define_method(:word?) do |second|
    if self.scan(/[aeiouy]/).count()>=1 == second.scan(/[aeiouy]/).count()>=1
      true
    else
      "Sorry I only understand English"
    end
  end
# checks to see if both have identical characters
  define_method(:anagram)  do |second|
    if (self.chars.sort() == second.chars.sort())
        'Is an anagram'
      else
        "Is NOT an anagram"
    end
  end

# makes all characters lowercase, strips all spaces and punctuation
  define_method(:palindrome) do |second|
    if small_letters_only = self.gsub(/([[:punct:]])/, '').downcase()
      no_space = small_letters_only.gsub(/\s+/, "")
      backwards = no_space.reverse()
      backwards
    else
      false
    end
  end

# checks for uniqe letters
  define_method(:antigram) do |second|
    input1 = self.scan(/\w/i)
    input2 = second.scan(/\w/i)
    if input1 & input2 = []
      "& is NOT an antigram"
    else
      "& is an antigram"
    end
  end
end
