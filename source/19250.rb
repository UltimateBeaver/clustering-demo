# input:
#['cars', 'for', 'potatoes', 'racs', 'four','scar', 'creams', 'scream']
#  => output:  [["cars", "racs", "scar"], ["four"], ["for"], ["potatoes"],
#["creams", "scream"]]
# HINT: you can quickly tell if two words are anagrams by sorting their
#  letters, keeping in mind that upper vs lowercase doesn't matter
def combine_anagrams(words)
  anagram_groups = {}
  words.each do |word|
    key = word.downcase.chars.sort().join("")
    words_in_group = anagram_groups.has_key?(key) ? anagram_groups[key] : []
    words_in_group.push(word)
    anagram_groups[key] = words_in_group
  end

  anagram_groups.values()

end




