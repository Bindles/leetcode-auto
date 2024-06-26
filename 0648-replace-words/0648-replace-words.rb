# @param {String[]} dictionary
# @param {String} sentence
# @return {String}
def replace_words(dictionary, sentence)
    words = sentence.split(' ')
    dictionary.each do |keyword|
        words.each.with_index do |word, i|
            words[i] = keyword if word.start_with?(keyword)
        end
    end
    words.join(' ')
end