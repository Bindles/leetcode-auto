/**
 * @param {number[][]} matrix
 * @return {number[]}
 */
var luckyNumbers  = function(matrix) {
  // Transpose the matrix and find the maximum in each column
  const maxInCol = matrix[0].map((_, colIndex) => Math.max(...matrix.map(row => row[colIndex])));
  console.log(maxInCol);

  // Find the minimum in each row
  const minInRow = matrix.map(row => Math.min(...row));
  console.log(minInRow);

  // Find the intersection of the two arrays
  const result = minInRow.filter(value => maxInCol.includes(value));
  return result;
};