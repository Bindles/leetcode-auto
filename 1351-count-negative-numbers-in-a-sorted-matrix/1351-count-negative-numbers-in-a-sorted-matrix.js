/**
 * @param {number[][]} grid
 * @return {number}
 */
var countNegatives = function(grid) {
    return grid.flat().filter(num => num < 0).length;
};