# @param {Integer[]} nums
# @return {Integer}
def sum_of_encrypted_int(nums)
  nums.sum do |num|
    numstr = num.to_s
    maxdigit = numstr.chars.max
    numstr.gsub(/./, maxdigit).to_i
  end
end


# @param {Integer[]} nums
# @return {Integer}
def sum_of_encrypted_int(nums)
    res=0
    nums.each do |num|
       digs = num.digits
       maxnum = digs.max
       digs.map!{|num| num = maxnum}
       res += digs.join.to_i
    end
    res
end

def sum_of_encrypted_int(nums)
  nums.sum { |num|
    d = num.digits
    max = d.max
    (10 ** d.size - 1) / 9 * max
  }
end