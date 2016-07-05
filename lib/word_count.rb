require("pry")

class String
  define_method(:word_count) do |phrase|
    text = []
    slovo = self.downcase()
    phrase_array = phrase.split(' ').map(&:downcase)
    phrase_array.each do |word|
      text.push(word) if slovo == word
    end
    results = text.length
  end
end
