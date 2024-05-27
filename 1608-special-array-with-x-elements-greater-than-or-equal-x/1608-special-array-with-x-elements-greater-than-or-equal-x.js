/**
 * @param {number[]} nums
 * @return {number}
 */
var specialArray = function(nums) {
  let i = nums.length;
  while (i > 0) {
      if (i === nums.filter(num => num >= i).length) {
          return i;
      }
      i -= 1;
  }
  return -1;
};