/**
 * @param {number} n
 * @param {number} start
 * @return {number}
 */
var xorOperation = function(n, start) {
    total=0
    let arr = new Array(n).fill(0)
    let res = arr.map((num, index) => start + num + 2 * index)
    console.log(res)
    for (num of res) {
        total^=num
    }
    return total
};