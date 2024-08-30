# @param {String} s
# @param {Integer} k
# @param {Character} fill
# @return {String[]}
def divide_string(s, k, fill)
    res=[]
    s.chars.each_slice(k) do |slice|
        if slice.size == k
            res << slice.join
        else
            res << slice.join + fill * (k - slice.size)
        end
    end
    res
end