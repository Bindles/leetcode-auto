/**
 * @param {number[]} cost
 * @return {number}
 */
var minCostClimbingStairs = function(cost) {
    cost.push(0)
    console.log(cost)
    for (let i=cost.length-3; i>=0; i--) {
        // cost[i] = Math.min(cost[i]+cost[i+1], cost[i]+cost[i+2])
        cost[i] += Math.min(cost[i+1], cost[i+2]) // Above Line Simplified
    }
    return Math.min(cost[0], cost[1])
};