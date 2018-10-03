class PigLatinizer

                def piglatinize(input)
                  if input.split(" ").length == 1
                    pig_word(input)
                  else
                    pig_sentence(input)
                  end

                end

                    def pig_word(word)
                      words.each do |word|
                        vowels = %w{a e i o u}

                          if vowels.include? word[0]
                            result.push word << 'ay'
                          else
                            helper(word)
                          end

                          def helper(word)
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
                                #word = oughthay
                          end

                          def pig_sentence(sentence)
                              sentence.split.collect { |word| pig_word(word) }.join(" ")
                          end

                          end
end

end
