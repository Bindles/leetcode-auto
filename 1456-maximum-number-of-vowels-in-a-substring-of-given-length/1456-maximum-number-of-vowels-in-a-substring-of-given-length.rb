# @param {String} s
# @param {Integer} k
# @return {Integer}
def max_vowels(s, k)
  (0..s.size-k).map {|i| s[i...i+k].count('aeiouu') }.max
end