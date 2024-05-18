# @param {String} s
# @return {Integer}
def count_asterisks(s)
    res=0
    s.split('|').each_with_index do |subs, i|
        res += subs.count('*') if i.even?
    end
    res  
end