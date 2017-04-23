class String
define_method(:anagrammer) do
    lower = self.downcase()
    letters_only = lower.gsub(/[[:punct:]]/, '')
    no_space = letters_only.gsub(/\s+/, "")
    no_space
  end
end
# .gsub(/\s+/, "")
# .gsub(/[[:punct:]]/, '')
