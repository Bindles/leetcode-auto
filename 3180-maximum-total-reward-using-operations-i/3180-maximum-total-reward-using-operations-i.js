/**
 * @param {number[]} rewardValues
 * @return {number}
 */
var maxTotalReward = function(rewardValues) {
  rewardValues.sort((a, b) => a - b);
  let maximum = rewardValues[rewardValues.length - 1];

  //let dp = new Array(maximum * 2).fill(0); //below might be faster/efficient
  let dp = new Int8Array(maximum * 2)

  for (let rew of rewardValues) {
    for (let i = 0; i < rew; i++) {
      if (dp[i + rew] < dp[i] + rew) {
        dp[i + rew] = dp[i] + rew;
      }
    }
  }

  return Math.max(...dp);
};