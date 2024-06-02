# @param {Integer} n
# @return {Integer[]}
def sum_zero(n)
  (1..n/2).flat_map { |i| [i, -i] } + (n.odd? ? [0] : [])
end