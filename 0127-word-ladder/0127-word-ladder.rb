# @param {String} begin_word
# @param {String} end_word
# @param {String[]} word_list
# @return {Integer}
def ladder_length(begin_word, end_word, word_list)
  word_set = Set.new(word_list)
  queue = [begin_word]
  steps = 0
  until queue.empty?
    steps += 1
    queue.size.times do
      current_word = queue.shift
      return steps if current_word == end_word
      ('a'..'z').to_a.product((0...current_word.size).to_a).each do |char, index|
        new_word = current_word.dup.tap { |str| str[index] = char }
        if word_set.include?(new_word)
          queue << new_word
          word_set.delete(new_word)
        end
      end
    end
  end
  0
end
