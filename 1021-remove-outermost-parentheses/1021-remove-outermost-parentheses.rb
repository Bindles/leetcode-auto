# @param {String} s
# @return {String}
def remove_outer_parentheses(s)
    stack=[]
    res=''
    s.each_char do |i|
        stack.pop if s[i] == ')'
        res += s[i] unless stack.empty?
        stack.push('(') if s[i] == '('    
    end
    res
end

