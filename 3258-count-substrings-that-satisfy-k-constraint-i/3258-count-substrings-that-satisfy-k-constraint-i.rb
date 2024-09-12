# @param {String} s
# @param {Integer} k
# @return {Integer}
def count_k_constraint_substrings(s, k)
  total = 0
  s.chars.each_index do |i|
    (i...s.size).each do |j|
      substring = s[i..j]
      total += 1 if substring.count("1") <= k || substring.count("0") <= k
    end
  end
  total
end
