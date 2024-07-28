# @param {Integer[][]} grid
# @return {Integer[]}
def find_column_width(grid)
    max_col_len=0
    result=[]
    grid.transpose.each do |col|
        col.each do |num|
            max_col_len=[max_col_len, num.to_s.length].max
        end
        result << max_col_len
        max_col_len=0
    end
    result
end