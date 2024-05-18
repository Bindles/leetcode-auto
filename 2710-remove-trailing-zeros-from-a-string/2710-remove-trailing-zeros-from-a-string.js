/**
 * @param {string} num
 * @return {string}
 */
var removeTrailingZeros = function(num) {
  return parseInt(num.split('').reverse().join('')).toString().split('').reverse().join('');
};