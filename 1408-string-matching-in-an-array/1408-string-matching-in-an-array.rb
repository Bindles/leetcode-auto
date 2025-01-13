# @param {String[]} words
# @return {String[]}
def string_matching(words)
  words.each_with_object([]) do |word, result|
    result << word if words.any? {|x| x != word && x.include?(word) }
  end
end