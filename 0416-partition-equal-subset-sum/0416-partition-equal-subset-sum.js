/**
 * @param {number[]} nums
 * @return {boolean}
 */
var canPartition = function(nums) {
    if (nums.reduce((a, b) => a + b, 0) % 2 !== 0) {
        return false;
    }

    const target = Math.floor(nums.reduce((a, b) => a + b, 0) / 2); // JS REDUCE of SUM() / 2
    const dp = Array.from({ length: nums.length + 1 }, () => Array(target + 1).fill(false));
    
    for (let i = 0; i <= nums.length; i++) {
        for (let j = 0; j <= target; j++) {
            if (j === 0) {
                dp[i][j] = true;
            } else if (i === 0) {
                dp[i][j] = false;
            } else if (nums[i - 1] > j) {
                dp[i][j] = dp[i - 1][j];
            } else {
                dp[i][j] = dp[i - 1][j] || dp[i - 1][j - nums[i - 1]];
            }
        }
    }

    return dp[nums.length][target];
}

