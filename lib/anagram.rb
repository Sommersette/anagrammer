class String
define_method(:anagrammer) do
    small_letters_only = self.gsub(/[[:punct:]]/, '').downcase()
    no_space = small_letters_only.gsub(/\s+/, "")
    no_space
  end
end
