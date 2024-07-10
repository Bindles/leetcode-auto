# @param {String} word1
# @param {String} word2
# @return {Boolean}
def close_strings(word1, word2)
    w1 = word1.chars.tally
    w2 = word2.chars.tally

     w1.keys.sort == w2.keys.sort && w1.values.sort == w2.values.sort
end