# @param {String[]} words
# @return {String[]}
def common_chars(words)
  min_counts = words[0].chars.tally
  words[1..].each do |word|
    counts = word.chars.tally
    min_counts.each do |char, count|
      min_counts[char] = [count, counts[char] || 0].min
    end
  end
  min_counts.flat_map { |char, count| [char] * count }
end