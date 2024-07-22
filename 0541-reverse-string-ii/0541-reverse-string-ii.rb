# @param {String} s
# @param {Integer} k
# @return {String}
def reverse_str(s, k)
    0.step(s.size, 2*k) do |i|
        s[i...i+k] = s[i...i+k].reverse
    end
    s
end
