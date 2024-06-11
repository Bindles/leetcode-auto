/**
 * @param {number[]} nums
 * @param {number} k
 * @return {number}
 */
var longestOnes = function(nums, k) {
   left=0;
   for (right in nums) {
      k-=1 - nums[right]
      if (k < 0) {
          k+=1 - nums[left]
          left+=1
      }
   }
   return nums.length - left
};