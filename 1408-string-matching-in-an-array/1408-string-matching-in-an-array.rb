# @param {String[]} words
# @return {String[]}
def string_matching(words)
  words.select do |word|
    words.any? {|x| x != word && x.include?(word) }
  end
end