# @param {String[]} strs
# @return {Integer}
def min_deletion_size(strs)
    str_columns=strs.map{|str|str.chars}.transpose.count{|col|col.sort!=col}  
end 