/**
 * @param {string} s
 * @param {string} t
 * @param {number} maxCost
 * @return {number}
 */
var equalSubstring = function(s, t, maxCost) {
    let left = 0;
    let totalCost = 0;
    let maxLength = 0;

    for (let right = 0; right < s.length; right++) {
        totalCost += Math.abs(s.charCodeAt(right) - t.charCodeAt(right));

        while (totalCost > maxCost) {
            totalCost -= Math.abs(s.charCodeAt(left) - t.charCodeAt(left));
            left++;
        }

        maxLength = Math.max(maxLength, right - left + 1);
    }

    return maxLength;
};

