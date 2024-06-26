/**
 * @param {character[][]} board
 * @return {boolean}
 */
var isValidSudoku = function(board) {
    // let posArray = new Int16Array(9) // MORE EFFICIENT/WONT WORK
    //JS CANT ARRAYS OF COORDS LIKE [[x,y]] SIMILAR TO PYTHON.
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