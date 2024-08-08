# @param {Integer[]} nums
# @return {Integer}
def average_value(nums) # num.even? && num % 3 == 0 simplified below
    selected_nums = nums.select{|num| num % 6 == 0}
    selected_nums.empty? ? 0 : selected_nums.sum / selected_nums.size
end