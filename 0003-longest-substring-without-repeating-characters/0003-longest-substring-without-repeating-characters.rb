# @param {String} s
# @return {Integer}
def length_of_longest_substring(s)
    seen = Set.new()
    left = result = 0

    s.chars.each_index do |right|
        while seen.include?(s[right])
            seen.delete(s[left])
            left += 1
        end
                        
        seen.add(s[right])
        result = [result, right - left + 1].max
    end

    result
end