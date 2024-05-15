# @param {String} s
# @param {Character} c
# @return {Integer[]}
def shortest_to_char(s, c)
  res=[]
  nums = s.each_char.with_index.filter_map {|char, i| i if char == c}
  s.chars.each_index do |num|
    res << (num -  nums.min_by {|x| (x - num).abs}).abs
  end
  res
end