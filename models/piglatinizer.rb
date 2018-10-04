class PigLatinizer

  def piglatinize(input)
      if input.split(" ").length == 1
          pig_word(input)
      else
          pig_sentence(input)
      end
 end

  def pig_word(words)
    words = words.split("")
    words.each do |word|
      vowels = %w{a e i o u}

    if vowels.include? words[0]
        result.push words << 'ay'
    else
        helper(words)
    end

    end
  end

  def helper(words)
    if !(vowels.include? words[0]) && !(vowels.include? words[1]) && !(vowels.include? words[2]) # word starts with 3 consonants
        words = words.slice(3..-1) + words.slice(0,3)
        # word starts with 2 consonants
    elsif !(vowels.include? words[0]) && !(vowels.include? words[1])
        #Example: though
        words = words.slice(2..-1) + words.slice(0,2)
        #word = ough + th
        #word = oughth
        # word starts with 1 consonant
    else
        words = words.slice(1..-1) + words.slice(0)
    end
    words << "ay"
  end

def pig_sentence(sentence)
    sentence.split.collect { |word| pig_word(word) }.join(" ")
end

end
