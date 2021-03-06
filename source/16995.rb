def combine_anagrams(words)
	h = Hash.new
	words.each {|w| 
		key = w.downcase.split(//).sort.join
		h[key].push(w) if h[key]
		h[key] = [w] unless h[key]
	}
	h.values
end
