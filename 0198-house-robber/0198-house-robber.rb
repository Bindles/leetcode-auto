# @param {Integer[]} nums
# @return {Integer}
def rob(nums)
    rob1 = rob2 = 0
    nums.each do |num|
        rob1, rob2 = rob2, [num + rob1, rob2].max
    end
    rob2
end