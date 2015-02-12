def combine_anagrams(words)
  groupz = Hash.new
  words.each { |w|
    sorted = w.downcase.chars.sort.join
    if groupz.has_key?(sorted)
      groupz[sorted] << w
    else
      groupz[sorted] = [w]
    end
  }
  return groupz.values
end

def combine_anagrams(words)
  words_hash={}
  for word in words
    if words_hash[word.downcase.chars.sort.join]==nil
      words_hash[word.downcase.chars.sort.join]=[]
    end
    words_hash[word.downcase.chars.sort.join] << word
  end
  return words_hash.values
end

def combine_anagrams(words)
  result = Array.new
  while !words.empty? do
    out = Array.new
    words.each do |word| 
      if words[0].downcase.chars.sort == word.downcase.chars.sort
        out << word
      end
    end
    words -= out
    result << out
  end
  return result
end

def combine_anagrams(words)
  result = []
  words.each do |word|
    found = false
    result.each do |search|
      if search[0].downcase.split("").sort == word.downcase.split("").sort
        search.push(word)
        found = true
        break
      end
    end
    if !found
      result.push([ word ])
    end
  end

  return result
end