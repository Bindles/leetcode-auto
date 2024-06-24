# @param {Integer[]} target
# @return {Integer}
def min_number_operations(target)
  previous = 0
  result = 0
  
  target.each do |num|
    result += [num-previous, 0].max
    previous = num
  end
  result
end