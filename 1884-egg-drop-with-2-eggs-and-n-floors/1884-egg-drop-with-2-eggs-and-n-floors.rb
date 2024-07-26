# @param {Integer} n
# @return {Integer}
def two_egg_drop(n)
    (((1+8*n)**0.5 -1)/2).ceil
end