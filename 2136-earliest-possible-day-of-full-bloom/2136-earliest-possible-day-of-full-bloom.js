/**
 * @param {number[]} plantTime
 * @param {number[]} growTime
 * @return {number}
 */
var earliestFullBloom = function(plantTime, growTime) {
    let restDay = 0;
    let moreNecessaryDays = [];
    let combined = plantTime.map((p, i) => [p, growTime[i]]);
    combined.sort((a, b) => a[1] - b[1]);
    
    for (let [plantDay, growDay] of combined) {
        if (restDay < growDay) {
            moreNecessaryDays.push(growDay - restDay);
        }
        restDay += plantDay;
    }
    return plantTime.reduce((a, b) => a + b, 0) + Math.max(...moreNecessaryDays);
};