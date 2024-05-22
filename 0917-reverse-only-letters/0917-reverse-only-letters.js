/**
 * @param {string} s
 * @return {string}
 */
var reverseOnlyLetters = function(s) {
    let letters = s.split('').filter(c => /[a-zA-Z]/.test(c));
    let result = s.split('').map(c => /[a-zA-Z]/.test(c) ? letters.pop() : c).join('');
    return result;
};