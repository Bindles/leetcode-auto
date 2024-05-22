/**
 * @param {number[]} nums
 * @return {number}
 */
var maximumXOR = function(nums) {
  return nums.reduce((acc, num) => acc | num, 0);     
};