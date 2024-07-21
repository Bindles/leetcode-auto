# @param {String} s
# @param {Integer} k
# @return {String}
def digit_sum(s, k)
    until s.size <= k
        s.chars.each_slice(k).map.with_index do |slice, i|
            s.clear if i == 0
            s += (slice.map(&:to_i).sum).to_s
        end
    end
    s
end