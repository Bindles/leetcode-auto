# @param {Integer} c
# @return {Boolean}
def judge_square_sum(c)
    left = 0
    right = Math.sqrt(c).to_i

    while left <= right
        sm = left*left + right*right
        return true if sm == c

        if sm < c
            left+=1
        elsif sm > c
            right-=1
        end
    end
    return false
end