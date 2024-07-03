# @param {Integer[]} nums
# @return {Integer}
def max_subarray_sum_circular(nums)
  numzero= nums[0]
  max_sum = numzero
  min_sum = numzero
  curr_max = numzero
  curr_min = numzero
  total_sum = numzero
  (1...nums.length).each do |i|
      num = nums[i]
      
      curr_max = [num, (curr_max + num)].max
      max_sum = [max_sum, curr_max].max

      curr_min = [num, (curr_min + num)].min
      min_sum = [min_sum, curr_min].min

      total_sum += num
  end
  max_sum < 0 ? max_sum : [max_sum, total_sum - min_sum].max
end