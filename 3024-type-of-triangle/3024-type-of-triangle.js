/**
 * @param {number[]} nums
 * @return {string}
 */
var triangleType = function (nums) {

    let res = ['equilateral', 'isosceles', 'scalene']
    nums.sort((a, b) => a - b)
    return (nums[0] + nums[1] <= nums[2]) ? 'none' : res[new Set(nums).size - 1]
};