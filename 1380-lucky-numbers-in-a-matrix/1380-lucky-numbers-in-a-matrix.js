/**
 * @param {number[][]} matrix
 * @return {number[]}
 */
var luckyNumbers  = function(matrix) {
  return [...new Set(matrix.map(row => Math.min(...row)))]
      .filter(value => new Set(matrix[0].map((_, colIndex) => Math.max(...matrix.map(row => row[colIndex])))).has(value));
};