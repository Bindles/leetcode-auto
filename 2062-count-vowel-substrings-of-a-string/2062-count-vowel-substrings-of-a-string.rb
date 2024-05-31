# @param {String} word
# @return {Integer}
def count_vowel_substrings(word)
  vowels = ['a', 'e', 'i', 'o', 'u']
  n = word.length
  count = 0
  
  (0...n).each do |start|
    (start...n).each do |end_pos|
      substring = word[start..end_pos]
      if substring.chars.all? { |char| vowels.include?(char) } && vowels.all? { |vowel| substring.include?(vowel) }
        count += 1
      end
    end
  end
  
  count
end