# @param {String[]} words
# @param {Character} separator
# @return {String[]}
def split_words_by_separator(words, separator)
  words.join(separator).split(separator).reject(&:empty?)
end