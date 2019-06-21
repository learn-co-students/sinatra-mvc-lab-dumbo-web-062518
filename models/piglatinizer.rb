class PigLatinizer
  attr_accessor :words

  def initialize
    # down_input = input_phrase.downcase
    # @words = down_input.split
  end

  def input_split
    @words.split
  end

  def split_words
    @all_letters = input_split.map do |word|
      word.split("")
    end
    @all_letters
  end

  def find_consonants
    input_split.map do |word|
    word.downcase.scan(/[bcdfghjklmnpqrstvwxyz]/)
  end
  end

  def find_vowels
    input_split.map do |word|
    word.downcase.scan(/[aeoui]/)
  end
  end

  def get_vowels
    split_words.each do |word|
    find_vowels.each do |vowels|
      word.each do |letter|
        vowels.each do |vowel|
          # binding.pry
        if word[-1] == "w"
        elsif letter.downcase == vowel && word[0].downcase == letter.downcase
          word << "w"
        end
      end
    end
  end
end

  # binding.pry
  @all_letters
end

  def get_consonants(array)
    array.each do |word|
      find_consonants.each do |consonants|
        # binding.pry
      if word.first.downcase == consonants.first && word[1].downcase == consonants[1] && word[2] == consonants[2]
        word << word.first
        word << word[1]
        word << word[2]
        3.times do
        word.shift
        end
      elsif word.first.downcase == consonants.first && word[1].downcase == consonants[1]
        word << word.first
        word << word[1]
        2.times do
          word.shift
        end
      elsif word.first.downcase == consonants.first
        word << word.first
        word.shift
    end
  end
end
@all_letters
end

  def rejoin_consonants
    @all_letters
  end

  def piglatinize(input)
    @words = input
    new_array = get_vowels
      ay_array = get_consonants(new_array).map do |array|
        array << "ay"
        array.join
      end
    ay_array.join(" ")
end

end
