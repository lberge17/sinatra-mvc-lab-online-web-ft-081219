class PigLatinizer
  
  def piglatize_word(words)
    if words.include?(" ")
      words_array = words.split(" ")
    else
      words_array = [words]
    end
    words = words_array.map do |word|
      piglatize_word(word)
    end
    letters = word.split("")
    vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", ]
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