# @param {Integer[]} nums
# @return {Integer}
def max_value_after_reverse(nums)
    total = 0
    maximin, minimax = -Float::INFINITY, Float::INFINITY

    (1...nums.size).each do |i|
        min, max = [nums[i],nums[i-1]].min, [nums[i],nums[i-1]].max
        maximin = min if min > maximin
        minimax = max if max < minimax
        total += max - min
    end

    change = 2 * (maximin - minimax)

    (1...nums.size).each do |i| 
        left_option = (nums[0] - nums[i]).abs - (nums[i] - nums[i-1]).abs
        right_option = (nums[-1] - nums[i-1]).abs - (nums[i] - nums[i-1]).abs
        change = [left_option, right_option, change].max
    end

    total + change
end