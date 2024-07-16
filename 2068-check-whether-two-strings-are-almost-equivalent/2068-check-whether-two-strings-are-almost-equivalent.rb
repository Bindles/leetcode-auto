# @param {String} word1
# @param {String} word2
# @return {Boolean}
def check_almost_equivalent(word1, word2)
  char_counts = Hash.new(0)
  word1.each_char { |c| char_counts[c] += 1 }
  word2.each_char { |c| char_counts[c] -= 1 }
  char_counts.values.all? { |v| v.abs <= 3 }
end