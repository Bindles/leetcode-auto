/**
 * @param {number[]} nums
 * @return {number}
 */
var maximumLength = function(nums) {
    const dp = [[0, 0], [0, 0]];
    nums.forEach(num => {
        num %= 2;
        dp[num][0] = 1 + dp[0][num];
        dp[num][1] = 1 + dp[1][num];
    });
    return Math.max(...dp.flat());
};