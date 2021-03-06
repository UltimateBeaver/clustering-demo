#!/usr/bin/env ruby
def combine_anagrams(words)
  h = {}
  words.each { |word|
    w = word.chars.sort_by(&:downcase).join
    w.downcase!
    if h.has_key?(w)
      h[w] = h[w] << word
    else
      h[w] = [] #create blank array
      h[w] = h[w] << word
    end
  }
  wordArray = h.to_a
  wordArray1 = []
  wordArray.each { |w| 
    wordArray1 << w[1]
  }
  return wordArray1
end