# @param {Integer[]} nums
# @return {Integer}
def find_the_array_conc_val(nums)
    res = []
    until nums.empty?
        res << [nums.delete_at(0), nums.delete_at(-1)].join.to_i
    end
    res.sum
end