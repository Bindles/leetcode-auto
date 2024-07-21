# @param {String} s
# @param {Integer} k
# @return {String}
def digit_sum(s, k)
    until s.size <= k
        s.chars.each_slice(k).with_index do |slice, i|
            s.clear if i == 0
            s += (slice.sum(&:to_i)).to_s
        end
    end
    s
end
