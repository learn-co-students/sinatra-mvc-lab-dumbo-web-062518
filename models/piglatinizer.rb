class PigLatinizer

  def initialize
  end

  def piglatinize(phrase)
    word_array = phrase.split(/\s/)
    new_phrase_array = word_array.map do |word|
      new_word = String.new
      if word.match(/^[aeiou]/i)
        new_word = word + "way"
      else
        word_split = word.partition(/[aeiou]/)
        new_word = word_split[1] + word_split[2] + word_split[0] + "ay"
      end
      new_word
    end
    new_phrase = new_phrase_array.join(" ")
  end
end

  # def piglatinizer(str)
  #   latin = (str.split(" ").length == 1) ? piglatinize_word(str) : piglatinize_sent(str)
  #   # puts latin
  #   latin
  # end
  #
  # private
  #
  # def consonant?(char)
  #   !char.match(/[aAeEiIoOuU]/)
  # end
  #
  # def piglatinize_word(word)
  #   if !consonant?(word[0])
  #     word = word + "w"
  #   elsif consonant?(word[0]) && consonant?(word[1]) && consonant?(word[2])
  #     word = word.slice(2..-1) + word.slice(0,2)
  #   else
  #     word = word.slice(1..-1) + word.slice(0)
  #   end
  #   word << "ay"
  # end
  #
  # def piglatinize_sent(sentence)
  #   sentence.split.collect { |word| piglatinize_word(word)}.join(" ")
  # end
