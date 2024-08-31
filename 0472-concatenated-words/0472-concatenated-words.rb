# @param {String[]} words
# @return {String[]}
def find_all_concatenated_words_in_a_dict(words)
  word_set = words.to_set
  concatenated_words = []

  words.each do |word|
    word_set.delete(word)  # Remove current word to avoid using it in its own concatenation
    if can_be_concatenated?(word, word_set)
      concatenated_words << word
    end
    word_set.add(word)  # Add the word back to the set
  end

  concatenated_words
end

def can_be_concatenated?(word, word_set)
  dp = Array.new(word.size + 1, false)
  dp[0] = true

  (1..word.size).each do |i|
    (0...i).each do |j|
      if dp[j] && word_set.include?(word[j...i])
        dp[i] = true
        break
      end
    end
  end

  dp[word.size] && dp[word.size]
end
