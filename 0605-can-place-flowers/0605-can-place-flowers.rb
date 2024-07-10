# @param {Integer[]} flowerbed
# @param {Integer} n
# @return {Boolean}

def can_place_flowers(flowerbed, n)
  flowerbed.each_index do |i|
    n-=1 if flowerbed[ [0, i-1].max..i+1 ].all?(0)   
  end
  return n < 1
end