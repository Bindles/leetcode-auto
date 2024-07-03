# @param {Integer[]} arr
# @return {Integer}
def max_turbulence_size(arr)
    result = smaller = larger = 1
    (0...arr.size-1).each do |i|
        smaller = arr[i] < arr[i+1] ? smaller + 1 : 1
        larger = arr[i] > arr[i+1] ? larger + 1 : 1
        result = [ result, [smaller, larger].max ].max

        smaller, larger = larger, smaller
    end
    result
end