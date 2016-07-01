# require("pry")
#
# class String
#   define_method(:word_count) do |word|
#     slovo = self
# chosen_word_length = self.length
#     word = self
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
    text.join(' ')
  end
end

# counter =0
# select_word= slovo.split(' ') wrong

    # counter.+(1)

# counter
