/**
 * @param {string} s
 * @param {string} t
 * @return {number}
 */
var appendCharacters = function(s, t) {
    tIndex = 0;
    for (sChar of s) {
        if (sChar == t[tIndex]) {
            tIndex += 1
        }
    }
    return t.length - tIndex
};