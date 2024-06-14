# @param {Integer} start
# @param {Integer} goal
# @return {Integer}
def min_bit_flips(start, goal)
  s = start.to_s(2).chars
  g =  goal.to_s(2).chars
  count=0

  while s.size < g.size
    s.unshift("0")
  end
  while s.size > g.size
    g.unshift("0")
  end

  s.each_index do |i|
    count +=1 if s[i]!= g[i]
  end
  count
end