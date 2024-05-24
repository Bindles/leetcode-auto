/**
 * @param {number[]} startTime
 * @param {number[]} endTime
 * @param {number} queryTime
 * @return {number}
 */
var busyStudent = function(startTime, endTime, queryTime) {
    const times = startTime.map((start, index) => [start, endTime[index]]);
    const count = times.filter(([a, b]) => queryTime >= a && queryTime <= b).length;

    return count;
};