# @param {String} s
# @return {Integer}
def length_of_longest_substring(s)
  chars_seen = Set.new
  max_length = 0
  start = 0
  
  (0...s.length).each do |end_index|
      while chars_seen.include?(s[end_index])
          chars_seen.delete(s[start])
          start += 1
      end
      
      chars_seen.add(s[end_index])
      max_length = [max_length, end_index - start + 1].max
  end
  max_length
end