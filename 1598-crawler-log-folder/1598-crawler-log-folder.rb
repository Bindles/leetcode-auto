# @param {String[]} logs
# @return {Integer}
def min_operations(logs)
    curFol=0
    for log in logs
        if log == '../'
            curFol-=1  if curFol != 0
        elsif log == './'
            # do nothing
        else
            curFol+=1
        end
    end
    return curFol  
end