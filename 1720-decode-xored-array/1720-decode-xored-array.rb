# @param {Integer[]} encoded
# @param {Integer} first
# @return {Integer[]}
def decode(encoded, first)
    res = [first]
    encoded.each_index do |i|
        res << (encoded[i] ^ res[i])
    end
    res
end