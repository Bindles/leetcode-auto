# @param {Integer[]} arr
# @return {Integer}
def sum_odd_length_subarrays(arr)
    n = arr.length
    total_sum = 0
    # Iterate through all possible subarrays
    (0...n).each do |i|
        (i...n).step(2).each do |j|  # Increment by 2 to maintain odd length
            total_sum += arr[i..j].sum  # Calculate the sum of the subarray
        end
    end
    total_sum
end