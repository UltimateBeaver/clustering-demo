def combine_anagrams(words)
  anagrams = {}
  words.each do |word|
  	key = word.downcase.chars.sort.join
    anagrams[key] ||= []
    anagrams[key] << word
  end

  anagrams.values
end

# puts combine_anagrams(['cars', 'for', 'potatoes', 'racs', 'four','scar', 'creams', 'scream']).inspect