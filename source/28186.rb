def combine_anagrams(words)
  words_to_process = Array.new(words)
  result = Array.new
  words.each do |word1|
    if(words_to_process.include?(word1))
      words_to_process.delete_at(words_to_process.find_index(word1))
      anagrams = Array.new << word1
      words.each do |word2|
        if(words_to_process.include?(word2) && is_anagram(word1, word2))
          words_to_process.delete_at(words_to_process.find_index(word2))
          anagrams << word2
        end
      end
      result << anagrams
    end
  end
  puts result.inspect
  result
end

def is_anagram(word1, word2)
  word1.downcase.chars.to_a.sort == word2.downcase.chars.to_a.sort
end
