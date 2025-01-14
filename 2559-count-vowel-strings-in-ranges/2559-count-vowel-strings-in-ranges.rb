# @param {String[]} words
# @param {Integer[][]} queries
# @return {Integer[]}
def vowel_strings(words, queries)
  vowels = Set.new(%w[a e i o u])
  res = []
  
  queries.each do |query|
    res << words[query.first..query.last].count do |word|
      vowels.include?(word[0]) && vowels.include?(word[-1])
    end
  end
  res
end