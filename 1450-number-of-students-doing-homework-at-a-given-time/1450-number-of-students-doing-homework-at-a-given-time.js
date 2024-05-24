/**
 * @param {number[]} startTime
 * @param {number[]} endTime
 * @param {number} queryTime
 * @return {number}
 */
var busyStudent = function(startTime, endTime, queryTime) {
    // Zip startTime and endTime into pairs
    const times = startTime.map((start, index) => [start, endTime[index]]);

    // Create ranges and count how many include queryTime
    const count = times
        .map(([a, b]) => Array.from({ length: b - a + 1 }, (_, i) => a + i))
        .filter(range => range.includes(queryTime))
        .length;

    return count;
};