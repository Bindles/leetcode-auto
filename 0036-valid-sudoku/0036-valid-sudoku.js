/**
 * @param {character[][]} board
 * @return {boolean}
 */
var isValidSudoku = function(board) {
    // let posArray = new Int16Array(9) // MORE EFFICIENT/WONT WORK
    // It does not support the same kind of dynamic array manipulation as regular arrays. Specifically, it cannot store arrays of coordinates like [[x, y]].

    // Python List
    // Python's list can store any type of object, including lists of coordinates, making it more flexible in this context.

    // You need to use a regular array in JavaScript to hold lists of coordinates. You can initialize it with null values or empty arrays to accommodate dynamic list storage.

    let posArray = Array.from({ length: 9 }, () => []);
    

    for (let y = 0; y < 9; y++) {
        for (let x = 0; x < 9; x++) {
            let boxId = Math.floor(y / 3) * 3 + Math.floor(x / 3);
            if (board[y][x] !== '.') {
                let number = parseInt(board[y][x]) - 1; // to fit in the 0-8 range

                if (posArray[number].length > 0) {
                    for (let [px, py] of posArray[number]) {
                        let pboxId = Math.floor(py / 3) * 3 + Math.floor(px / 3);
                        if (px === x || py === y || boxId === pboxId) {
                            return false;
                        }
                    }
                    posArray[number].push([x, y]);
                } else {
                    posArray[number] = [[x, y]];
                }
            }
        }
    }
    return true;
};