var searchRange = function(nums, target) {
    let res=[]
    nums.forEach((num, i) => {
        if (num===target) res.push(i)
    })
    console.log(res.length)
    return res.length===0 ? [-1, -1] : [res[0], res.at(-1)]
};