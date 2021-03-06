#Example:
# input:
#['cars', 'for', 'potatoes', 'racs', 'four','scar', 'creams', 'scream']
# => output: [["cars", "racs", "scar"], ["four"], ["for"], ["potatoes"],
#["creams", "scream"]]
# HINT: you can quickly tell if two words are anagrams by sorting their
# letters, keeping in mind that upper vs lowercase doesn't matter
def combine_anagrams(words)
#

  hash = {}
  words.each{ |word| 
       key = word.downcase.split(//).sort
       hash[key] = (hash[key] || []) + [word]
  }
  ans = []
  hash.map{ |k, v|
    ans += v
  }
  ans
end

__END__

print (combine_anagrams(['cars', 'for', 'potatoes', 'racs', 'four','scar', 'creams', 'scream']).to_s)
