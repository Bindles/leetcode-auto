# @param {Integer} n
# @param {Integer} k
# @return {Integer}
def sum_base(n, k)
    n.to_s(k).to_i.digits.sum
end