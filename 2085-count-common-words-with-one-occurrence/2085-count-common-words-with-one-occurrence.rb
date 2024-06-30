# @param {String[]} words1
# @param {String[]} words2
# @return {Integer}
def count_words(words1, words2)
    sentences_combined = words1 + words2
    (words1 & words2).count do |w|
        sentences_combined.count(w) == 2
    end
end