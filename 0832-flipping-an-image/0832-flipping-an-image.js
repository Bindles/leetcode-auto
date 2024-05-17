/**
 * @param {number[][]} image
 * @return {number[][]}
 */
var flipAndInvertImage = function(image) {
  const reversed_image = image.map(row => row.reverse());
  return reversed_image.map(sub => {
    return sub.map(num => num === 0 ? 1 : 0)
  })
}
