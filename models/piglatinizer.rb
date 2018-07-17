class PigLatinizer
  attr_accessor :words_to_edit

  def initialize(input_phrase)
    down_input = input_phrase.downcase
    @words_to_edit = down_input.split
  end

  def split_words
    @all_letters = @words_to_edit.map do |word|
      word.split("")
    end
    @all_letters
  end

  def find_consonants
    @words_to_edit.map do |word|
      # binding.pry
    word.scan(/[bcdfghjklmnpqrstvwxyz]/)
  end
  end

  def get_consonants
    split_words.each do |word|
      find_consonants.each do |consonants|
      if word.first == consonants.first && word[1] == consonants[1]
        word << consonants.first
        word << consonants[1]
        word.shift
        word.shift
      elsif word.first == consonants.first
        word << consonants.first
        word.shift
      end
  end
end
@all_letters
end

  def rejoin_consonants
    @all_letters
  end

  def add_ay
      ay_array = get_consonants.map do |array|
        array << "ay"
        array.join
      end
    ay_array
end

end
