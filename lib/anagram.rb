class String
# checks for vowels
  define_method(:word) do |second|
    if self.scan(/[aeiouy]/).count()>=1 === second.scan(/[aeiouy]/).count()>=1
    else
      "Sorry, I need a real word otherwise..."
    end
  end
# checks to see if both have identical characters
  define_method(:anagram)  do |second|
    if (self.chars.sort() == second.chars.sort())
         "Are anagrams"
      else
        "Are NOT anagrams"
    end
  end

# makes all characters lowercase, strips all spaces and punctuation
  define_method(:palindrome) do |second|
    small_letters_only = self.gsub(/([[:punct:]])/, '').downcase()
    no_space = small_letters_only.gsub(/\s+/, "")
    no_space.length()
    # second
    s_letters = second.gsub(/([[:punct:]])/, '').downcase()
    n_spc = s_letters.gsub(/\s+/, "")
    if no_space === n_spc.reverse()
      "Are palidromes."
    else
      "Are not palidromes"
    end
  end

# checks for uniqe letters
  define_method(:antigram) do |second|
    unique = (self.scan(/\w/) + second.scan(/\w/)).uniq
    if  (self + second).length == unique.length()
      "are antigrams"
    else
      "are NOT antigrams"
    end
  end
end
