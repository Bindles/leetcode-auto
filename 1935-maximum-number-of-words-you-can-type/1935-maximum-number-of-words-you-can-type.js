/**
 * @param {string} text
 * @param {string} brokenLetters
 * @return {number}
 */
var canBeTypedWords = function(text, brokenLetters) {
  return text.split(' ').filter(word => !word.split('').some(char => brokenLetters.includes(char))).length;
};