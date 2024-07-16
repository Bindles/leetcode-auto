# @param {String[]} words
# @return {String[]}
def find_words(words)
  rows = ["qwertyuiop", "asdfghjkl", "zxcvbnm"]
  words.select {|word| rows.count {|row| word.downcase.chars.all? { |c| row.include?(c) } } == 1 }
end