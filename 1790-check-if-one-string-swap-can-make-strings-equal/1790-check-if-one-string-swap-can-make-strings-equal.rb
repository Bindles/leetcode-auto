# @param {String} s1
# @param {String} s2
# @return {Boolean}
def are_almost_equal(s1, s2)
    return false unless s1 == s2.reverse if s1.size <= 2
    stack=[]
    swap=false

    a = s1.each_char.with_index.to_a.map { |char, index| [index, char] }.to_h
    b = s2.each_char.with_index.to_a.map { |char, index| [index, char] }.to_h

    a.each.with_index do |i,ind|
        p "#{a[ind]} #{b[ind]}"
        if a[ind] == b[ind]
            next
        end
        if stack.empty?
            stack << [a[ind], b[ind]]
        elsif swap == false
            if stack.flatten == [a[ind], b[ind]].reverse
                swap=true
            else
                return false
            end
        else
            return false
        end
    end
   return true
end