/**
 * @param {number[]} nums
 * @return {number}
 */
var maximumLength = function(nums) {
    const parityList = nums.map(num => num % 2);
    let sumOfOnes = parityList.reduce((a, b) => a + b, 0);
    let alternatingLength = 1, previousParity = parityList[0];
    for (let currentParity of parityList.slice(1)) {
        if (previousParity !== currentParity) {
            alternatingLength += 1;
            previousParity = currentParity;
        }
    }
    return Math.max(sumOfOnes, parityList.length - sumOfOnes, alternatingLength);
};