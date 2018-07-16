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
