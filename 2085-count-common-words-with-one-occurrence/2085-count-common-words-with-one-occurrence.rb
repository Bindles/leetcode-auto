# @param {String[]} words1
# @param {String[]} words2
# @return {Integer}
def count_words(words1, words2)
 (words1.select{words1.count(_1) == 1} & words2.select{words2.count(_1) == 1}).length
end