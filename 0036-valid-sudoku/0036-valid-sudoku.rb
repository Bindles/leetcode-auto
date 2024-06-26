# @param {Character[][]} board
# @return {Boolean}
def is_valid_sudoku(board)
    pos_array = Array.new(9)
    
    (0...9).each do |y|
        (0...9).each do |x|
            box_id = y/3*3+x/3
            if board[y][x] != '.'
                number = board[y][x].to_i          

                if pos_array[number]
                    pos_array[number].each do |px,py|
                        pbox_id = py/3*3+px/3
                        if px == x || py == y || box_id == pbox_id
                            return false
                        end
                    end
                    pos_array[number] << [x,y]
                else
                    pos_array[number] = [[x,y]]
                end
            end
        end
    end
    true
end