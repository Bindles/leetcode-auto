/**
 * @param {number[]} nums
 * @return {number}
 */
var maximumStrongPairXor = function(nums) {
    let max_xor = 0;
    const n = nums.length;
    
    for (let i = 0; i < n; i++) {
        for (let j = i; j < n; j++) {
            let x = nums[i], y = nums[j];
            if (Math.abs(x - y) <= Math.min(x, y)) {
                max_xor = Math.max(max_xor, x ^ y);
            }
        }
    }
    
    return max_xor;
};