/**
 * @param {string} s
 * @param {character} c
 * @return {number[]}
 */
var shortestToChar = function(s, c) {
  const res = [];
  const indices = [];
  
  for (let i = 0; i < s.length; i++) {
      if (s[i] === c) {
          indices.push(i);
      }
  }
  
  for (let i = 0; i < s.length; i++) {
      let minDist = Infinity;
      for (let index of indices) {
          minDist = Math.min(minDist, Math.abs(i - index));
      }
      res.push(minDist);
  }
  return res;
};