# @param {Integer[]} nums
# @return {Integer}
def rob(nums)
    rob1 = rob2 = 0
    nums.each do |num|
        # rob1, rob2 = rob2, [num + rob1, rob2].max # assign both at once
        temp = [num + rob1, rob2].max
        rob1 = rob2
        rob2 = temp
    end
    rob2
end