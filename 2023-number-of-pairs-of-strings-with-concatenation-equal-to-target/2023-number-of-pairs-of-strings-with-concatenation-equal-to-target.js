/**
 * @param {string[]} nums
 * @param {string} target
 * @return {number}
 */
var numOfPairs = function(nums, target) {
    return nums.reduce((count, _, i) =>
        count += [...Array(nums.length - i)].filter((_, j) => nums[i] + nums[j + i] === target).length
    , 0);
};

