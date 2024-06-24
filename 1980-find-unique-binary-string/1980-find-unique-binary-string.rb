# @param {String[]} nums
# @return {String}
def find_different_binary_string(nums)
    nums.each_index.sum(''){|i| ['1', '0'][nums[i][i].to_i] }
end