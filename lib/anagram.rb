class String
define_method(:anagrammer) do
    lower = self.downcase()
    letters_only = lower.gsub(/[[:punct:]]/, '')
    letters_only
  end
end
# .gsub!(/[?.!,;]?$/, '')
# .gsub!(/[[:punct:]]?$/,'')
# .gsub(/\s+/, "")
