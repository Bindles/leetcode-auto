# @param {String[]} words
# @param {String} pref
# @return {Integer}
def prefix_count(words, pref)
    words.select{|word| word[0...pref.size] == pref }.size
end