# @param {String} a
# @param {String} b
# @return {Integer}
def find_lu_slength(a, b)
    if a == b
        return -1 
    elsif a.size > b.size
        return a.size
    end
    b.size
end