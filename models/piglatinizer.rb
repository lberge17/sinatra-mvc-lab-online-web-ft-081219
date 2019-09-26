class PigLatinizer
  
  def piglatinize_word(word)
    letters = word.split("")
    vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
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