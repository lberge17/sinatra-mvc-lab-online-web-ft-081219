class PigLatinizer
  attr_reader :words
  
  def initialize#(words)
    #words_array = words.split(" ")
    #@words = words_array.map do |word|
    #  piglatize_word(word)
    #end
  end
  
  def piglatize_word(word)
    letters = word.split("")
    vowels = ["a", "e", "i", "o", "u"]
    consonants = []
    
    if vowels.include?(letters[0])
      new_word = word + "way"
    else
      until vowels.include?(letters[0]) do
        consonants << letters.shift()
      end
      new_word = (letters.concat(consonants)).join("") + "ay"
    end
    new_word
  end
  
end