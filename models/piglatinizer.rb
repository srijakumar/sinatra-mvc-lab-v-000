require 'pry'

class PigLatinizer
  def piglatinize(input)
    new_input = input.split(" ")
      if new_input.length == 1
          pig_word(input)
      else
          pig_sentence(new_input)
      end
 end

def pig_word(word)
    vowels = ["a","e","i","o","u", "A", "E", "I", "O", "U"]
    if word.length == 1
      #  binding.pry
      handle_one_letter(word)
  #  elsif vowels.include? word[0] && word.length == 1
  #    result.push word << 'way'
    elsif vowels.include? word[0]
       return word << 'way'
    else
        helper(word)
    end
  end


def handle_one_letter(word)
    vowels = ["a","e","i","o","u", "A", "E", "I", "O", "U"]
      if vowels.include?(word)
          word << 'way'
      else
          word << 'ay'
      end
end

def helper(word)
vowels = ["a","e","i","o","u", "A", "E", "I", "O", "U"]

  if !(vowels.include? word[0]) && !(vowels.include? word[1]) && !(vowels.include? word[2]) # word starts with 3 consonants
      word = word.slice(3..-1) + word.slice(0,3)
      # word starts with 2 consonants
    elsif !(vowels.include? word[0]) && !(vowels.include? word[1])
        #Example: though
        word = word.slice(2..-1) + word.slice(0,2)
        #word = ough + th
        #word = oughth
        # word starts with 1 consonant
    else
        word = word.slice(1..-1) + word.slice(0)
    end
    word << "ay"
end

def pig_sentence(sentence)
    #  binding.pry
    sentence.collect { |word|
       if word.length == 1
         handle_one_letter(word)
       else
         pig_word(word)
     end

    }.join(" ")
end

end
