# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def longest_ones(nums, k)
  left = 0
  nums.each_index do |right|
      k -= 1 - nums[right]
      if k < 0
          k += 1 - nums[left]
          left+=1
      end
  end
  nums.size - left
end