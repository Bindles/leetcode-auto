# @param {String[]} dictionary
# @param {String} sentence
# @return {String}
def replace_words(dictionary, sentence)
  result = ''
  dictionary.sort_by!(&:length)
  sentence.split(' ').each do |word|
    sub_str = word
    dictionary.each do |item|
      if sub_str.start_with?(item)
        sub_str = item
        break
      end
    end
    result += sub_str + ' '
  end
  result.strip
end