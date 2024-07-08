# @param {Integer} n
# @param {Integer} time
# @return {Integer}
def pass_the_pillow(n, time) #time rem after rounds completed
    return time+1 if time < n; time_left = time % (n-1) # roundsCompl.even?=dir(Fwd)
    (time / (n-1)).even? ? (return time_left+1) : (return n - time_left)
end