/**
 * @param {number[]} nums
 * @return {number}
 */
var smallestEqual = function(nums) {
  for (i in nums) {
      if (i % 10 == nums[i]) {
      return i
      }
  }
  return -1
};