# @param {String} s
# @return {Integer}
def second_highest(s)
    res=[]
    s.chars.each do |c|
        p c
        res << c if c.match?(/\d/)
    end
    if res.uniq.size > 1
        res.delete(res.max) 
        res.max.to_i
    else
        return -1
    end
end