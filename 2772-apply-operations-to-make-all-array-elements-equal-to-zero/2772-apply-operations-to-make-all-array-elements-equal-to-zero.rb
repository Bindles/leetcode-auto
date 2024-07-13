# @param {Integer[]} nums
# @param {Integer} k
# @return {Boolean}
def check_array(nums, k)
  n = nums.size
  for i in 0...(n-k)
    nums[i+k] += nums[i]
  end

  for i in 0...(n-1)
    if nums[i] > nums[i+1]
      return false 
    elsif i>=(n-k) && nums[i] != nums[i+1]
        return false
    end
  end
  return true
end



