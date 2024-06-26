# @param {String[]} dictionary
# @param {String} sentence
# @return {String}
def replace_words(dictionary, sentence)
  dictionary.reduce(sentence.split) {|arr,keyword| arr.map {|word| word.start_with?(keyword) ? keyword : word } }.join ' '    
end