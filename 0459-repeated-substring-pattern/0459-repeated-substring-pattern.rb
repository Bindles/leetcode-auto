# @param {String} s
# @return {Boolean}
def repeated_substring_pattern(s)
  (1..(s.size / 2)).each do |i|
    return true if s[0...i] * (s.size / i) == s
  end
  false
end
