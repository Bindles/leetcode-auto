/**
 * @param {number[]} nums
 * @param {number} target
 * @return {number[]}
 */
var twoSum = function(nums, target) {
    for (let i = 1; i < nums.length; i++) {
        for (let j = i; j < nums.length; j++) {
            if (nums[j] + nums[j - i] === target) {
                return [j - i, j];
            }
        }
    }
    return [-1, -1];
};