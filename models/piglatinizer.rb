class PigLatinizer
  #
  # def initializer (string)
  #   @string = string
  # end

  def piglatinize(stringw)
    stringw.split(" ").map do |word|
      w = word.partition(/\A[b-z&&[^aeiou]]+/i)
      if word[0] =~ /[aeiou]/i
        "#{w[1]+w[0]}way"
      else
        "#{w[2]+w[1]+w[0]}ay"
      end
    end.join(" ")
  end
end
