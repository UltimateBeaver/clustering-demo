def combine_anagrams(words)
        [] if words.empty?
        combine = Hash.new
        words.each do |word|
                sorted = word.upcase.chars.sort.join
                if combine.has_key?(sorted)
                        combine[sorted] << word
                else
                        combine[sorted] = [word]
                end    
        end
        combine.values
end