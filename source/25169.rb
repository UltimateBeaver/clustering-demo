def combine_anagrams(words)
groups = []
words.each do |x|
  inc_bool = false
  groups.each{|y| inc_bool = true if y.include?(x)}

  if inc_bool == false
  group = []
  groups << group
    words.each  {|y|
      if (x.upcase.chars.sort.join == y.upcase.chars.sort.join); groups.last << y; end
    }
     end

end

return groups
end

word = ['cars', 'for', 'potatoes', 'Cars', 'racs', 'four', 'scar' , 'creams', 'scream', 'cars']
group = combine_anagrams(word)
puts(group)
