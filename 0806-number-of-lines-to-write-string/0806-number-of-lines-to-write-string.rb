# @param {Integer[]} widths
# @param {String} s
# @return {Integer[]}
def number_of_lines(widths, s)
  costs = ('a'..'z').to_a.zip(widths).to_h
  lines = 1
  width = 0
  
  s.each_char do |chr|
    current = width + costs[chr]
    if current > 100
      lines += 1
      width = costs[chr]
    else
      width = current
    end
  end
  
  [lines, width]
end