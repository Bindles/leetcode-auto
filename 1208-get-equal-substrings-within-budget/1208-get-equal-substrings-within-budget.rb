# @param {String} s
# @param {String} t
# @param {Integer} max_cost
# @return {Integer}
def equal_substring(s, t, max_cost)
    left = tcost = maxlen = 0
    s.chars.each_index do |right|
        tcost+= (s[right].ord - t[right].ord).abs

        while tcost > max_cost
            tcost -= (s[left].ord - t[left].ord).abs
            left+=1

            maxlen = [maxlen, right - left+1].max

        return maxlen
        
        end
    end
end

