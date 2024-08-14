# @param {String[]} words
# @return {String[]}
def string_matching(words)
  w = words.sort_by(&:size)
  w.each_with_object([]) do |word, result|
    result.push(word) if w.any? {|x| x != word && x.include?(word) }
  end
end