# @param {String} s
# @return {Boolean}
def repeated_substring_pattern(s)
    for i in 1..(s.size / 2)   
        if s.size % i == 0
            q = s.size / i
            s2 = s[0...i] * q
            if s2 == s
                return true
            end
        end
    end
    false
end