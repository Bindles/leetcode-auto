# @param {String} s
# @param {Integer} k
# @return {String}
def license_key_formatting(s, k)
    s_formatted = s.upcase.delete('-')

    temp=1
    (1...s_formatted.size).reverse_each do |i|
        if temp == k
            s_formatted.insert(i, '-')
            temp = 0
        end
        temp += 1
    end
    s_formatted
end