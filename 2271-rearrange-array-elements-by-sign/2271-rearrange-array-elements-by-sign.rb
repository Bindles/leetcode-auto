# @param {Integer[]} nums
# @return {Integer[]}
def rearrange_array(nums)
  result = Array.new(nums.size, 0)

  index_even, index_odd = 0, 1
  nums.each do |num|
    if num > 0
      result[index_even] = num
      index_even += 2
    else
      result[index_odd] = num
      index_odd += 2
    end
  end
  result
end