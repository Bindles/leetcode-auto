# @param {String[]} words
# @return {String[]}
def string_matching(words)
  result = []
  
  # Iterate through each word to check if it's a substring of another word
  words.each_index do |i|
    words.each_index do |j|
      # Check if the word is a substring of another word and it's not the same word
      if i != j && words[j].include?(words[i])
        result << words[i]
        break # Once found, move to the next word
      end
    end
  end

  result.uniq
end