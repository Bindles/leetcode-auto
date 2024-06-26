class Solution:
    def isValidSudoku(self, board: List[List[str]]) -> bool:
        # pos_array = [[[] for _ in range(9)]] # FILL => '[]' instead of 0s
        pos_array = [0] * 9

        for y in range(9):
            for x in range(9):
                box_id = (y // 3) * 3 + (x // 3)
                if board[y][x] != '.':
                    number = int(board[y][x]) - 1  # to fit in the 0-8 range

                    if pos_array[number]:
                        for px, py in pos_array[number]:
                            pbox_id = (py // 3) * 3 + (px // 3)
                            if px == x or py == y or box_id == pbox_id:
                                return False
                        pos_array[number].append((x, y))
                    else:
                        pos_array[number] = [(x, y)]
        return True


        