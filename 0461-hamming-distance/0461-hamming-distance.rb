# @param {Integer} x
# @param {Integer} y
# @return {Integer}
def hamming_distance(x, y)
    max_bit_length=[x.bit_length, y.bit_length].max
    xb = x.to_s(2).rjust(max_bit_length, '0')
    xy = y.to_s(2).rjust(max_bit_length, '0')
    
    xb.chars.each_index.count do |i|
        xb[i] != xy[i]
    end
end