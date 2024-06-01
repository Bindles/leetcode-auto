/**
 * @param {string[]} operations
 * @return {number}
 */
var calPoints = function(operations) {
    res=[]
    operations.forEach(char => {
        if (char === 'C') res.pop(-1)
        else if (char === 'D') res.push(res.at(-1) * 2)
        else if (char === '+') res.push(res.at(-1) + res.at(-2))
        else res.push(parseInt(char))
        console.log(res)    
    })
    return res.reduce((acc, num) => acc + num, 0)
};