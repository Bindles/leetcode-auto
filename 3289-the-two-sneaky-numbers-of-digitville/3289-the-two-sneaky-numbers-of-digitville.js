/**
 * @param {number[]} nums
 * @return {number[]}
 */
var getSneakyNumbers = function(nums) {
    tally = {}

    nums.forEach(num => tally[num] = (tally[num] || 0) + 1 );

    return Object.keys(tally)
        .filter(key => tally[key] > 1)
        .map(Number); // Convert keys back to numbers    
};