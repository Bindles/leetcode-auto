
# @param {Integer[]} nums
# @param {Integer} k
# @param {Integer} multiplier
# @return {Integer[]}
def get_final_state(nums, k, multiplier)
  k.times do 
    nums[nums.index(nums.min)] *= multiplier
  end
  nums
end