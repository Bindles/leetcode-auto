# @param {String[]} strs
# @return {Integer}
def min_deletion_size(strs)
    # Convert (map) the array of strings into an array of character arrays
    # Get columns by taking indice 0-str.length of each row (transpose)
    str_columns = strs.map { |str| str.chars }.transpose
    str_columns.count do |col|
        col.sort != col
    end   
end 