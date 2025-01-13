/**
 * @param {string[]} words
 * @return {string[]}
 */
var stringMatching = function(words) {
  return words.filter(word => 
    words.some(x => x !== word && x.includes(word))
  );
}