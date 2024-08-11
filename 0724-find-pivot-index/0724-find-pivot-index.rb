# @param {Integer[]} nums
# @return {Integer}
def pivot_index(nums)
    total = nums.sum
    left_total=0

    nums.each_index do |i|
        right_total = total - left_total - nums[i]
        return i if right_total == left_total
        left_total += nums[i]
    end
    return -1
end