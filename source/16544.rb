# Part 3: anagrams
# An anagram is a word obtained by rearranging the letters of another word. For
# example, "rats", "tars" and "star" are an anagram group because they are made up of the same
# letters.
# Given an array of strings, write a method that groups them into anagram groups and returns
# the array of groups. Case doesn't matter in classifying string as anagrams (but case should be
# preserved in the output), and the order of the anagrams in the groups doesn't matter.
# Example:
# # input:
# ['cars', 'for', 'potatoes', 'racs', 'four','scar', 'creams', 'scream']
# # => output: [["cars", "racs", "scar"], ["four"], ["for"], ["potatoes"],
# ["creams", "scream"]]
# HINT: you can quickly tell if two words are anagrams by sorting their
# letters, keeping in mind that upper vs lowercase doesn't matter

def combine_anagrams(words)

  h = Hash.new()
  
  words.collect { |word| 
    wordArr = word.downcase.split(//) 
    sortedWord = wordArr.sort.join()

    if h[sortedWord]
      h[sortedWord].push(word)
    else
      h[sortedWord] = [word]
    end 
  }
  
  h.values
  
end

print combine_anagrams(['Cars', 'for', 'potatoes', 'Racs', 'four','scar', 'creams', 'scream'])
