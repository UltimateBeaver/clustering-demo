def combine_anagrams(words)
  r = Hash.new
  words.each do |word|
    w = word.downcase.chars.sort.join
    unless r.has_key?(w)
      r[w] = Array.new
    end
    r[w].push(word)
  end
  return r.map { |k,v| v.sort}.sort
end
