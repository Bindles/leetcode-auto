# @param {Integer[]} nums
# @return {Integer}
def maximum_length(nums)
    parity_list = nums.map { |num| num % 2 }
    ones_sum = parity_list.sum
    alternating_length = 1
    prev = parity_list[0]
    
    parity_list[1..-1].each do |num|
        if prev != num
            alternating_length += 1
            prev = num
        end
    end
    [ones_sum, parity_list.size - ones_sum, alternating_length].max
end