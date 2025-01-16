
# @param {Integer[]} nums
# @param {Integer} k
# @param {Integer} multiplier
# @return {Integer[]}
def get_final_state(nums, k, multiplier)
  k.times.each_with_object(nums) do |_,nums|
    nums[nums.index(nums.min)] *= multiplier
  end
end