443. String Compression
#* 443. String Compression
# @param {Character[]} chars
# @return {Integer}
def compress(chars)
    res=[]
    x=chars.tally
    x.each do |char,count|
        res << char
        res << count
    end
    x
end