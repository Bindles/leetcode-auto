# @param {Integer[]} nums
# @return {Integer}
def maximum_difference(nums)
    max = -1
    nums.each_index do |i|
        (i+1...nums.size).each do |j|
            diff = nums[j] - nums[i]
            max = diff if diff > max  && diff > 0
        end
    end
    max
end