# @param {Integer} n
# @param {Integer} time
# @return {Integer}
def pass_the_pillow(n, time)
    return time+1 if time < n
    rounds_completed = time / (n-1) # #of compl rounds
    time_left = time % (n-1) #time rem after compl rounds
    #0=>forward|1=>backward|2=>forward|3=>backward
    if rounds_completed.even? # direction?(even=forward)
        return time+1
    else
        return n - time_left
    end
end