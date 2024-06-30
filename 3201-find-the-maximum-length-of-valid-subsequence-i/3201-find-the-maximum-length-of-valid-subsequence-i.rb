# @param {Integer[]} nums
# @return {Integer}
def maximum_length(nums)
    dp = [[0,0],[0,0]]
    for num in nums
        num %=2
        dp[num][0] = 1 + dp[0][num]
        dp[num][1] = 1 + dp[1][num]
    end
    dp.flatten.max
end