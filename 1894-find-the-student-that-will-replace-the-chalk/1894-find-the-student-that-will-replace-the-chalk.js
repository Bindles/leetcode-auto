/**
 * @param {number[]} chalk
 * @param {number} k
 * @return {number}
 */
var chalkReplacer = function(chalk, k) {
    k %= chalk.reduce((acc, cur) => acc + cur, 0) // chalk.sum
    for (let i=0;i<chalk.length;i++) {
        if (k < chalk[i]) return i;
        k -= chalk[i];
    }
};