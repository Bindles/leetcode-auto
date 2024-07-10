# @param {Integer[]} flowerbed
# @param {Integer} n
# @return {Boolean}
def can_place_flowers(flowerbed, n)
  flowerbed.each_index do |i|
    if n < 1
      break
    elsif flowerbed[[0, i-1].max..i+1].all?(0) 
      flowerbed[i] = 1
      n-=1
    end 
  end
  return n < 1
end


