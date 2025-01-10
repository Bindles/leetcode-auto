# @param {String[]} words
# @param {String} pref
# @return {Integer}
def prefix_count(words, pref)
  words.filter{|word| word.start_with?(pref)}.count
end



