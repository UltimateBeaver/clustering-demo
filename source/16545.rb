
def combine_anagrams(words)	
	result = []
	while !words.empty?
		word1 = words[0]
		group = []
		changed_input = words
		words.each do |word2|
			if (word1.upcase.chars.sort==word2.upcase.chars.sort)
				group << word2 
				changed_input = changed_input-[word2]
			end
		end
		words = changed_input
		result << group
	end
	return result
end


