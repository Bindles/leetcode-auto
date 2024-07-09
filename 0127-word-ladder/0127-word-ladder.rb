# @param {String} begin_word
# @param {String} end_word
# @param {String[]} word_list
# @return {Integer}
def ladder_length(begin_word, end_word, word_list)
  dict = Set.new(word_list)
  queue = [begin_word]
  step = 0
  until queue.empty?
    step += 1
    queue.size.times do
      word = queue.shift
      return step if word == end_word
      [*'a'..'z'].product([*0...word.size]).each do |char, i|
        new_word = word.dup.tap { |str| str[i]=char }
        dict.include?(new_word) && queue << new_word  && dict.delete(new_word)
      end
    end
  end

  return 0
end