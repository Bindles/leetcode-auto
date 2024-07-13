# @param {String} s
# @param {Integer} k
# @return {Integer}
def max_vowels(s, k)
  count=0
  (0..s.size-k).each do |i|
    vc = s[i...i+k].count('aeiou')
    count = [count, vc].max
  end
  count
end