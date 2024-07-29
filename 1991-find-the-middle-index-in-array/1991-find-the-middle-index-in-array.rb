# @param {Integer[]} nums
# @return {Integer}
def find_middle_index(nums)
    total = nums.sum
    left_sum = 0
    nums.each_with_index do |current_value, index|
        right_sum = total - left_sum - current_value
        return index if left_sum == right_sum
        left_sum += current_value
    end
    -1
end
