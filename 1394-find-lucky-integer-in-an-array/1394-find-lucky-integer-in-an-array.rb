# @param {Integer[]} arr
# @return {Integer}
def find_lucky(arr)
   arr.sort.reverse.find {|num| arr.count(num) == num} || -1
end