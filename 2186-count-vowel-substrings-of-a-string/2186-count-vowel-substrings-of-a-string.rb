# @param {String} word
# @return {Integer}
def count_vowel_substrings(word)
  vowels = ['a', 'e', 'i', 'o', 'u']
  n = word.length

  (0...n).sum do |start|
    (start...n).count do |end_pos|
      substring = word[start..end_pos]
      substring.match?(/\A[aeiou]+\z/) && vowels.all? { |vowel| substring.include?(vowel) }
    end
  end
end