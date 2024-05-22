# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.
def move_zeroes(nums)
  old_len = nums.size
  nums.delete(0)
  zeroamount = Array.new(old_len-nums.size, 0)
  nums.push(*zeroamount)
end
