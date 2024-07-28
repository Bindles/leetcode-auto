# @param {Integer} x
# @param {Integer} y
# @return {Integer}
def hamming_distance(x, y)
    count=0
    max_bit_length=[x.bit_length, y.bit_length].max
    
    xb = x.to_s(2).rjust(max_bit_length, '0')
    xy = y.to_s(2).rjust(max_bit_length, '0')
    xb.chars.each_index do |i|
        puts  "#{xb[i]} | #{xy[i]}"
        count+=1 if xb[i] != xy[i]
    end
    count 
end