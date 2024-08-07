/**
 * @param {number[]} nums
 * @param {number} k
 * @return {number}
 */
var maxOperations = function(nums, k) {
    nums.sort((a, b) => a - b); // Sort nums array in ascending order
    let count = 0;
    let left = 0;
    let right = nums.length - 1; 

    while (left < right) {
        let sum = nums[left] + nums[right];
        if (sum === k) {
            count++;
            left++;
            right--;
        } else if (sum < k) {
            left++;
        } else {
            right--;
        }
    }
    return count;
};
