# @param {Integer} n
# @return {Integer}
def arrange_coins(n)
  stair_cost=1
  stairs_completed=0

  while n >= stair_cost
    n -= stair_cost
    stairs_completed+=1
    stair_cost+=1
  end

  stairs_completed
end