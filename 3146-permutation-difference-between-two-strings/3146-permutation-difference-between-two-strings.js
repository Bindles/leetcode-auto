/**
 * @param {string} s
 * @param {string} t
 * @return {number}
 */
var findPermutationDifference = function(s, t) {
  let sc = [...s].reduce((acc, char, index) => {
    acc[char] = index;
    return acc;
  }, {});

  let tc = [...t].reduce((acc, char, index) => {
    acc[char] = index;
    return acc;
  }, {});

  return Object.keys(tc).reduce((sum, char) => {
    return sum + Math.abs(tc[char] - (sc[char] || 0));
  }, 0);
};