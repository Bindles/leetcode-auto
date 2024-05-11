/**
 * @param {number[]} nums
 * @param {number} k
 * @return {number}
 */
var maximumSubarraySum = function(nums, k) {
  let high = 0;
  let n = nums.length;

  for (let i = 0; i <= n - k; i++) {
    let subarray = nums.slice(i, i + k);
    let freq = {};
    let distinct = true;

    for (let j = 0; j < subarray.length; j++) {
      if (freq[subarray[j]]) {
        distinct = false;
        break;
      } else {
        freq[subarray[j]] = true;
      }
    }

    if (distinct) {
      high = Math.max(high, subarray.reduce((a, b) => a + b, 0));
    }
  }
  return high;
};
