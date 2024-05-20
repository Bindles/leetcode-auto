# @param {String} s
# @param {String} t
# @return {Integer}
def min_steps(s, t)
  t.chars.reject{|char|s.chars.include?(char)}.size + s.chars.reject{|char|t.chars.include?(char)}.size
end