# @param {String} paragraph
# @param {String[]} banned
# @return {String}
def most_common_word(paragraph, banned)
    bset = Set.new(banned)
    words = paragraph.split(/\W+/).map(&:downcase).reject{|x|bset.member?(x)}
    wordtally = words.tally

    words.max_by do |word| 
        wordtally[word] 
    end
end