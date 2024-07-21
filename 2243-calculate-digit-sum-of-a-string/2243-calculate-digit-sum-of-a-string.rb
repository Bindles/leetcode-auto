# @param {String} s
# @param {Integer} k
# @return {String}
def digit_sum(s, k)
    until s.size <= k
        res=''
        s.chars.each_slice(k) do |slice|
            res += (slice.map(&:to_i).sum).to_s
        end
        s=res
    end
    s
end
