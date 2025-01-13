# @param {String[]} words
# @return {String[]}
def string_matching(words)
  w = words.sort_by(&:size)
  result = []
  w.each do |word|
    result.push(word) if w.any? { |x| x != word && x.include?(word) }
  end
  result
end
