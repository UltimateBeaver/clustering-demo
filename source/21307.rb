def combine_anagrams(words)
  words=words.flatten
  words_temp=words	
  result=[]
  words.each do |w|     
         w_arr=[]
         unless result.flatten.include?(w)
	     w_arr.push(w)
	     words_temp.each do |w_t|
	       if w.downcase.chars.sort.join==w_t.downcase.chars.sort.join
	       	  w_arr.push(w_t) unless w_arr.include?(w_t)
	       end
	     end 
	     result.push(w_arr) 
	    end
  end	
  return result
end

arr=['cars','cars','for','racs','Potatoes','four','creams','scream']
arr2=[['a', 'a'], ['b', 'b'], ['c'], ['d']]
print combine_anagrams(arr)