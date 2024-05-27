# @param {String} s
# @param {String} t
# @return {Integer}
def find_permutation_difference(s, t)
  sc = s.each_char.with_index.to_h
  tc = t.each_char.with_index.to_h
  tc.sum{|key,value| (tc[key] - sc[key]).abs }
end