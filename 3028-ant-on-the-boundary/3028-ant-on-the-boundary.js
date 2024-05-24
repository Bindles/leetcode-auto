/**
 * @param {number[]} nums
 * @return {number}
 */
var returnToBoundaryCount = function(nums) {
    let total = 0;
    let boundaryHits = 0;

    nums.forEach(num => {
        total += num;
        if (total === 0) {
            boundaryHits += 1;
        }
    });

    return boundaryHits;
};