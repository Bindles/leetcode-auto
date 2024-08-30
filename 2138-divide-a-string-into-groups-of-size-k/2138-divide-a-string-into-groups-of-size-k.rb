# @param {String} s
# @param {Integer} k
# @param {Character} fill
# @return {String[]}
def divide_string(s, k, fill)
    res=[]
    s.chars.each_slice(k) do |slice|
        res << slice.join.ljust(k, fill)
    end
    res
end