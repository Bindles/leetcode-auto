# @param {Integer} n
# @return {Integer}
def arrange_coins(n)
  left = 1
  right = n

  while left <= right do
    mid = (left + right) / 2
    area = 0.5 * mid**2 + mid / 2.0

    if area == n
      return mid
    elsif area < n
      left = mid + 1
    else
      right = mid - 1
    end
    
  end

  left - 1
end