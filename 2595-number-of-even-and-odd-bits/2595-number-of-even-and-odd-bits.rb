# @param {Integer} n
# @return {Integer[]}
def even_odd_bit(n)
    xb = n.to_s(2).reverse
    even_indices = xb.chars.each_with_index.select{|c, i| c =='1' && i.even? }
    odd_indices = xb.chars.each_with_index.select{|c, i| c =='1' && i.odd? }
    [even_indices.size, odd_indices.size]   
end