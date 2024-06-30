# @param {String} s
# @return {String}
def remove_duplicates(s, k)
    stack = [] # [char, count]
    s.each_char do |ch|
        if !stack.empty? && stack[-1][0] == ch
            stack[-1][1] += 1
        else
            stack << [ch, 1]
        end

        if stack[-1][1] == k
            stack.pop
        end
    end

    result = ''
    stack.each do |ch, count|
        result << ch * count
    end
    result
end