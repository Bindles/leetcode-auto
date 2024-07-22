# @param {String} s
# @return {Boolean}
def check_zero_ones(s)
    zerocount = maxzeros = onecount = maxones = 0
    s.each_char do |char|
        p char
        if char == "1"
            onecount+=1
            maxones=[maxones,onecount].max
            zerocount=0
        elsif char == "0"
            zerocount+=1
            maxzeros=[maxzeros,zerocount].max
            onecount=0
        end
    end
    maxones > maxzeros
end