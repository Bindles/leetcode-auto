# @param {Integer[]} digits
# @return {String}
def largest_multiple_of_three(digits)
  sum = digits.sum

  groups = {0 => [], 1 => [], 2 => []}
  digits.each { |digit| groups[digit % 3] << digit }

  if sum % 3 == 1
    if !groups[1].empty?
      groups[1].sort!.shift
    else
      2.times { groups[2].sort!.shift if !groups[2].empty? }
    end
  elsif sum % 3 == 2
    if !groups[2].empty?
      groups[2].sort!.shift
    else
      2.times { groups[1].sort!.shift if !groups[1].empty? }
    end
  end

  result = (groups[0] + groups[1] + groups[2]).sort.reverse

  result_str = result.join
  result_str.empty? || result_str[0] == '0' ? "" : result_str
end
