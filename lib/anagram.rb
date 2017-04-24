class String
define_method(:anagrammer) do |second| # second is for input 2
  enable = []
  File.open('enable1.txt').each do |line|
    enable << line.strip
  end
  input1 = []
  # input2 = []
  #   input1.each(enable) do
  #
  # end


   input1.each() do |word|
     enable.each() do
       if input1.include?(enable)
         puts true
       else
         puts false
       end
     end



    small_letters_only = self.gsub(/([[:punct:]])/, '').downcase()
    no_space = small_letters_only.gsub(/\s+/, "") # mashes words together
    backwards = no_space.reverse() # palindrome
    backwards
    end
  end
end
# add.map(&:downcase)
# use ^. and .length so it only looks for words of that length instead of going through the whole list #add information to a temp array and downcases it at the same time
# (/[aeiou]/) all vowels in a String
# input1 = gets.chomp()
