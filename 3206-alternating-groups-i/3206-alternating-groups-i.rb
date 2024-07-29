# @param {Integer[]} colors
# @return {Integer}
def number_of_alternating_groups(colors)
  colors.size.times.count do |i|
    colors[i - 1] != colors[i] && colors[i] != colors[(i + 1) % colors.size]
  end
end