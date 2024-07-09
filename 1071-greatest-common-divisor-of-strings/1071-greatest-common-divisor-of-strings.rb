# @param {String} str1
# @param {String} str2
# @return {String}
def gcd_of_strings(str1, str2)
    return "" unless str1 + str2 == str2 + str1
    res=[]
    count1 = str1.chars.tally
    count2 = str2.chars.tally
    count2.each  do |key,val| 
        res << key if count1[key] &.> 1
    end
    res.join
end