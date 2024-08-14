# @param {String[]} words
# @return {String[]}
def string_matching(words)
  words.select{|w| words.any?{|word| word != w and word.include?(w)}}
end