# @param {Integer[]} nums
# @return {Boolean}
def find_subarrays(nums)
    res=[]
    (nums.size-1).times do |i|
        windowsum = nums[i..i+1].sum
        return true if res.include?(windowsum)
        res << windowsum
    end
    return false
end