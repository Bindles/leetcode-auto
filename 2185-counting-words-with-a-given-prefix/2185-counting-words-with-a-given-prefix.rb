# @param {String[]} words
# @param {String} pref
# @return {Integer}
def prefix_count(words, pref)
    words.select{|word| word.index(pref) == 0}.size
end