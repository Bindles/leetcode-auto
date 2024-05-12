# @param {Integer} n
# @param {Integer} start
# @return {Integer}
def xor_operation(n, start)
    p arr = Array.new(n, 0)
    arr.map.with_index{|num,index| start + num + 2 * index}.reduce(&:^)
end