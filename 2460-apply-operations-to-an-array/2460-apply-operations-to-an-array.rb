# @param {Integer[]} nums
# @return {Integer[]}
def apply_operations(nums)
  result = []
  nums.each_index do |i|
    if i < nums.size - 1 && nums[i] == nums[i + 1] && nums[i] != 0
      nums[i] = nums[i] * 2
      nums[i + 1] = 0
    end
    result << nums[i] if nums[i] != 0
  end
  result + [0] * (nums.size - result.size)
end
