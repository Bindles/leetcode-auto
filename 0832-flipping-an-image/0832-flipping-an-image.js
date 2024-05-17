/**
 * @param {number[][]} image
 * @return {number[][]}
 */
var flipAndInvertImage = function(image) {
  const reversed_image = image.map(row => row.reverse());
  return reversed_image.map(sub => sub.map(num => 1 - num));
};
