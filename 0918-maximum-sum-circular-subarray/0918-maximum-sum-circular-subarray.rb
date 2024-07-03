# @param {Integer[]} nums
# @return {Integer}
def max_subarray_sum_circular(nums)
  sum = 0
  min_sum = Float::INFINITY
  max_sum = -Float::INFINITY
  
  curr_min = 0
  curr_max = 0
  
  nums.each_index do |i|
    curr_min = [nums[i] + curr_min, nums[i]].min
    min_sum = [min_sum, curr_min].min
    
    curr_max = [nums[i] + curr_max, nums[i]].max
    max_sum = [max_sum, curr_max].max
    
    sum += nums[i]
  end
  
  max_sum > 0 ? [sum - min_sum, max_sum].max : max_sum
end