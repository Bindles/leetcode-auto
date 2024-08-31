# @param {String} s
# @return {Boolean}
def repeated_substring_pattern(s)
  for i in 1..(s.size / 2)
    return true if s[0...i] * (s.size / i) == s
  end
  false
end
