# @param {String[]} words
# @return {Integer}
# @param {String[]} words
# @return {Integer}
def count_prefix_suffix_pairs(words)
  words.each_with_index.sum {|word, num|words[0...num].count {|w| word.start_with?(w) && word.end_with?(w) } }
end

