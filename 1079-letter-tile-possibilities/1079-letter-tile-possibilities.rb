# @param {String} tiles
# @return {Integer}
def num_tile_possibilities(tiles)
    n = tiles.size
    res=[]
    (1..n).each do |i|
        tiles.chars.permutation(i) {|x| res << x}
    end
    res.uniq.size
end