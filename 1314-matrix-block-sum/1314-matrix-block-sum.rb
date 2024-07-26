# @param {Integer[][]} mat
# @param {Integer} k
# @return {Integer[][]}
def matrix_block_sum(mat, k)
    n, m = mat.size, mat[0].size
    result = []
    i = 0
    
    while i < n
        row = []
        j = 0
        while j < m
            sum = 0
            # get row/col indices that is our mini matrix
            r1, r2 = [i-k, 0].max, [i+k, n-1].min
            c1, c2 = [j-k, 0].max, [j+k, m-1].min

            # sum all elements of mini matrix
            (r1..r2).each { |x| sum += mat[x][c1..c2].sum }
                
            row << sum
            j += 1
        end
        result << row
        i += 1
    end
    
    result
end