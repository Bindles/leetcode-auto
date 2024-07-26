# @param {Integer} n
# @return {Integer}
def two_egg_drop(n)
    res=0
    while n>0
        res += 1
        n -= res
    end
    res
end