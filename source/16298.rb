# Author: Calvin Mlynarczyk
# Solution: Problem #3

def combine_anagrams(words)
  split_words = []
  anagrams = []
  result = []
  
  words.each { |w| split_words << w.downcase.split(//).sort }
  
  for i in 0..(split_words.length - 1)
    if anagrams.include?(split_words[i])
      result[anagrams.index(split_words[i])] << words[i]
    else
      anagrams << split_words[i]
      result << [words[i]]
    end
  end
  
  return result
end
