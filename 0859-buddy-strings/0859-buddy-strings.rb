# @param {String} s
# @param {String} goal
# @return {Boolean}
def buddy_strings(s, goal)
  return false if s.size != goal.size
  s1 = String.new
  s2 = String.new
  chars = Set.new
  repeated = false

  s.chars.each_index do |i|
    repeated ||= !chars.add?(s[i]) # Bool
    next if s[i] == goal[i]
    s1 += s[i]
    s2 += goal[i]
  end
  (s1.size == 2 && s1 == s2.reverse) || (s1.size == 0 && repeated == true)
end