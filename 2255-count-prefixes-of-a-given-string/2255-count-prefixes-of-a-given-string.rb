# @param {String[]} words
# @param {String} s
# @return {Integer}
def count_prefixes(words, s)
  words.count{s.start_with?(_1)}
end