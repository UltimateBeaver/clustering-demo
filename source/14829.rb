def combine_anagrams(words)
  k=0
  anagrams = Array.new(0)
  is_in_anagrams = Array.new(words.length,false)
  
  for i in 0..words.length-1
     if is_in_anagrams[i] 
       next
     else
       k+=1
       l=0
       anagram_component = Array.new(0)
       anagram_component[l] = words[i]
     end
     for j in i+1..words.length-1
        if words[i].downcase.chars.sort.join == words[j].downcase.chars.sort.join
            l+=1
            anagram_component[l]=words[j]           
            is_in_anagrams[j]=true
        end
     end
     anagrams << anagram_component
  end
  return anagrams.sort 
# <YOUR CODE HERE>
end