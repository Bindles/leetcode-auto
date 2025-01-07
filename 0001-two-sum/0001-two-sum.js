/**
 * @param {number[]} nums
 * @param {number} target
 * @return {number[]}
 */
var twoSum = function(nums, target) {
    const pairs = nums.flatMap((num1, i) =>
    nums.map((num2, j) => ({ i, j, sum: num1 + num2 }))
    );

    const match = pairs.find(pair => pair.i < pair.j && pair.sum === target);

    return match ? [match.i, match.j] : [-1, -1];

};

