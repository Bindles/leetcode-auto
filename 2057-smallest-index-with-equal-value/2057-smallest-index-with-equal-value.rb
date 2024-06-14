# @param {Integer[]} nums
# @return {Integer}
def smallest_equal(nums)
    for i in 0...nums.size do
        return i if i % 10 == nums[i]
    end
    -1
end