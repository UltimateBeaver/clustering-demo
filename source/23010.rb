def combine_anagrams(words)
    output = [ ]
    words.each do |w|
        normalized = w.downcase.split(//).sort.join
        is_new = true
        output.each do |group|
            if normalized == group[0].split(//).sort.join
                is_new = false
                group << w
                group.sort!
                break
            end
        end
        output << [w] if is_new
    end
    output
end

i = ['cars', 'CaRS', 'for', 'potatoes', 'racs', 'four','scar', 'creams', 'scream']
puts combine_anagrams(i).inspect

