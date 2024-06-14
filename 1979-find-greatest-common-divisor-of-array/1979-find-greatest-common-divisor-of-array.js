/**
 * @param {number[]} nums
 * @return {number}
 */
var findGCD = function(nums) {
    var low = Math.min(...nums)
    var high = Math.max(...nums)
  
    while (high % low != 0) {
    var temp = low
    low = high % low
    high = temp
    }
    
    return low
};