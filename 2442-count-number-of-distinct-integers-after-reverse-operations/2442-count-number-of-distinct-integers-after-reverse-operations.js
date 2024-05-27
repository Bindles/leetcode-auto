/**
 * @param {number[]} nums
 * @return {number}
 */
var countDistinctIntegers = function(nums) {
    let revArr = nums.map(num => parseInt(num.toString().split('').reverse().join('')));
    nums.push(...revArr);
    let uniqueNums = new Set(nums);
    return uniqueNums.size;
};