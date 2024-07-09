# @param {String} begin_word
# @param {String} end_word
# @param {String[]} word_list
# @return {Integer}
def ladder_length(begin_word, end_word, word_list)
  graph = Hash.new { |hash, key| hash[key] = [] }

  word_list.each do |word|
    (0...begin_word.length).each do |i|
      graph[word[0...i] + '*' + word[i+1..-1]] << word
    end
  end

  queue = [[begin_word, 1]]
  visited = { begin_word => true }

  while !queue.empty?
    cur, level = queue.shift
    (0...begin_word.length).each do |i|
      inter = cur[0...i] + '*' + cur[i+1..-1]

      graph[inter].each do |word|
        if word == end_word
          return level + 1
        end

        if !visited[word]
          visited[word] = true
          queue << [word, level + 1]
        end
      end

      graph[inter] = []
    end
  end

  return 0
end