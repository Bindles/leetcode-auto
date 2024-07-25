# @param {Integer[]} arr
# @return {Integer[]}
# @param {Integer[]} arr
# @return {Integer[]}
def replace_elements(arr)
    arr.each_with_index {|_,i| arr[i] = arr[i+1,arr.size].max.nil? ? -1 : arr[i+1,arr.size].max }
end