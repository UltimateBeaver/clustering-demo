def combine_anagrams(words)
  
  output = Array.new
  
  words.each do |word|  
	indicator = 0
	output.each do |group| 
		if group[0].downcase.chars.sort.join.eql?(word.downcase.chars.sort.join) then
			group.insert(-1, word)
			indicator = 1
		end
	end
	if indicator == 0 then
		output.insert(-1, Array.new.insert(-1, word))
	end
  end
  
  return output
  
end