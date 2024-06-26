# @param {String[]} dictionary
# @param {String} sentence
# @return {String}
def replace_words(dictionary, sentence)
  st = Set.new(dictionary)
  words = sentence.split(' ')
  result = []

  words.each do |word|
    str = ''
    flag = false
    word.each_char do |ch|
      str += ch
      if st.include?(str)
        flag = true
        break
      end
    end
    result << (flag ? str : word)
  end

  result.join(' ')
end