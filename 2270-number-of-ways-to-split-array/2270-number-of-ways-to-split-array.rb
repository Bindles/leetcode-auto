# @param {Integer[]} nums
# @return {Integer}
def ways_to_split_array(nums)
  total_sum = nums.sum
  left_sum = 0

  (0...nums.length - 1).reduce(0) do |res, i|
    left_sum += nums[i]
    res + (left_sum >= (total_sum - left_sum) ? 1 : 0)
  end
end