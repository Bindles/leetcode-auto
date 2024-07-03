# @param {Integer[][]} grid
# @return {Integer}
def find_champion(grid)
    grid.transpose.find_index {|i| i.all?(0)}
end