# @param {Integer[]} nums
# @return {Boolean}
def can_jump(nums)
  max_reach = i = 0
  while i <= max_reach && max_reach < nums.size
      max_reach = [max_reach, i + nums[i]].max
      i += 1
  end
  return max_reach >= nums.size - 1
end