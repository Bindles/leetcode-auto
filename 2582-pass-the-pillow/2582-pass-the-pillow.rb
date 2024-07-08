# @param {Integer} n
# @param {Integer} time
# @return {Integer}
def pass_the_pillow(n, time)
    return time+1 if time < n
    rounds_completed = time / (n-1) # #of compl rounds
    time_left = time % (n-1) #time rem after compl rounds
    # direction?(even=forward)0=>forward|1=>backward|2=>f
    rounds_completed.even? ? (return time_left+1) : (return n - time_left)
end