/**
 * @param {number[]} nums
 * @param {number[]} queries
 * @param {number} x
 * @return {number[]}
 */
var occurrencesOfElement = function(nums, queries, x) {
    let occurrences = [];
    nums.forEach((num, i) => {
        if (num === x) occurrences.push(i);
    });

    return queries.map(query => {
        return query <= occurrences.length ? occurrences[query - 1] : -1;
    });
};