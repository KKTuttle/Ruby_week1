require("pry")

class String
  define_method(:word_count) do |phrase|
    text = []
    slovo = self
    phrase_array = phrase.split(' ')
binding.pry
    phrase_array.each do |word|
      text.push(word) if slovo == word
    end
    results = text.length
    # returns  (2)
  end
end
