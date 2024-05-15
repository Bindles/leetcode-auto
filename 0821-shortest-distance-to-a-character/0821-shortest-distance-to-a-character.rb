# @param {String} s
# @param {Character} c
# @return {Integer[]}
def shortest_to_char(s, c)
  res=[]
  char_indices = s.each_char.with_index.filter_map {|char, i| i if char == c}
  s.chars.each_index do |i|
   res << char_indices.map { |x| (x - i).abs }.min
  end
  res
end