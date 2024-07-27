# @param {String} s
# @return {String}
def freq_alphabets(s)
    mapx = (1..26).map(&:to_s).zip('a'..'z').to_a.to_h
    stack=[]
    str=''

    s.chars.each_index do |i| 
        if s[i] != '#'
            stack << s[i]
        else
            str += stack.pop
            str += stack.pop
            stack << str.reverse
            str=''
        end
    end
    stack.map {|num| mapx[num]}.join 
end