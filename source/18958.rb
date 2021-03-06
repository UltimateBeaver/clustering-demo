
def combine_anagrams(words)
  groups = {}
  words.each do |word|
  	letters = string_sort(word)
  	groups[letters] = [] if groups[letters] == nil
  	groups[letters] << word
  end
  groups.values
end

def string_sort(word)
	return word.downcase.split(//).sort.join
end