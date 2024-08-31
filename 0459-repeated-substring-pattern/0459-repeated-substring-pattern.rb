# @param {String} s
# @return {Boolean}
def repeated_substring_pattern(s)
   (1..(s.length / 2 )).each do |i|  
        if s.size % i == 0
            q = s.size / i
            s2 = s[0...i] * q
            return true if s2 == s
        end
    end
    false
end