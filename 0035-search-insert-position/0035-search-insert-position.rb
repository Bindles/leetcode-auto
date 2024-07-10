# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search_insert(nums, target)
   nums.each_index do |i|
     return i if target <= nums[i]
    end
    nums.size
end