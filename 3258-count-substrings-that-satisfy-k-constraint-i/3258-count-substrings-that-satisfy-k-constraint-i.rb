# @param {String} s
# @param {Integer} k
# @return {Integer}
def count_k_constraint_substrings(s, k)
  s.chars.each_index.sum do |i|
    (i...s.size).count do |j|
      substring = s[i..j]
      substring.count("1") <= k || substring.count("0") <= k
    end
  end
end
