# @param {String} s
# @return {Integer}
def max_depth(s)
    result=[]
    count=0
    maxcount=0
    s.chars.each_index do |i|
        if s[i] == '('
            count+=1
        elsif s[i] ==')'
            count-=1
        end
        maxcount = count if count > maxcount
    end
   maxcount
end