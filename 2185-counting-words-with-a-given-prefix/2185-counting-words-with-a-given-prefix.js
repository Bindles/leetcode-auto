/**
 * @param {string[]} words
 * @param {string} pref
 * @return {number}
 */
var prefixCount = function(words, pref) {
    let count=0;
    for (word of words) {
        if (word.startsWith(pref)) {count+=1;console.log(`${word} starts with ${pref}`)}
    }
    return count
};