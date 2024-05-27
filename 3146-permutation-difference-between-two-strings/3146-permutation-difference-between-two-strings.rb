# @param {String} s
# @param {String} t
# @return {Integer}
def find_permutation_difference(s, t)
  count=0
  sc = s.each_char.with_index.to_h
  tc = t.each_char.with_index.to_h
  tc.each{|key,value| count += (tc[key] - sc[key]).abs }
  count
end