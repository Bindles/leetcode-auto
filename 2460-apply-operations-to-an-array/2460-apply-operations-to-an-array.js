/**
 * @param {number[]} nums
 * @return {number[]}
 */
var applyOperations = function(nums) {
  let result = [];
  for (let i = 0; i < nums.length; i++) {
    if (i < nums.length - 1 && nums[i] === nums[i + 1] && nums[i] !== 0) {
      nums[i] *= 2;
      nums[i + 1] = 0;
    }
    if (nums[i] !== 0) {
      result.push(nums[i]);
    }
  }
  while (result.length < nums.length) {
    result.push(0);
  }
  return result;
};