def combine_anagrams(words)
temp=[]
  words.each do |word|
  w=word.downcase.split(//).uniq.sort.join 
  temp << w
  end  
  finalgrp=[]
  tempgrp=[]
  blacklist=[]
  
  #temp.each do |wor|
  #puts(wor)
  #end
  
  for i in (0..temp.length-1) do
    if(blacklist.include?(i))
      next
    else
      tempgrp << words[i]
      blacklist << i
    end
    for j in (i+1..temp.length) do
      if(temp[i]==temp[j] && !blacklist.include?(j))
      tempgrp << words[j]
      blacklist << j
      end
    end
        
    finalgrp << tempgrp
    tempgrp=[]
    end
  return finalgrp
end