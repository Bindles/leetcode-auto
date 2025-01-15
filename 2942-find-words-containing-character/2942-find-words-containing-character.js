/**
 * @param {string[]} words
 * @param {character} x
 * @return {number[]}
 */
var findWordsContaining = function(words, x) {
    return words.flatMap((word, index) => word.includes(x) ? index : []);
};