# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.
def move_zeroes(nums)
  # Initialize a pointer for the non-zero position
  non_zero_index = 0
  
  # Move all non-zero elements to the beginning of the array
  nums.each do |num|
    if num != 0
      nums[non_zero_index] = num
      non_zero_index += 1
    end
  end
  
  # Fill the remaining positions with zeros
  (non_zero_index...nums.size).each do |i|
    nums[i] = 0
  end
end