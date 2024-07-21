# @param {Integer[]} nums
# @param {Integer} key
# @return {Integer}
def most_frequent(nums, key)
    result = nums.filter_map.with_index {|num, index| nums[index+1] if num == key}
    result.max_by{|num| result.count(num)}  
end