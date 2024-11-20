/**
 * @param {number[]} prices
 * @return {number}
 */
var maxProfit = function(prices) {
    let result = 0;
    let lowest = prices[0];

    for (price of prices) {
    lowest = Math.min(lowest,price)
    result = Math.max(result, price - lowest)
    }
    return result;
};
