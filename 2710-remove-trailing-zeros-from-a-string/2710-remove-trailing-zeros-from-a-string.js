/**
 * @param {string} num
 * @return {string}
 */
var removeTrailingZeros = function(num) {
  return BigInt(num.split('').reverse().join('')).toString().split('').reverse().join('');
};