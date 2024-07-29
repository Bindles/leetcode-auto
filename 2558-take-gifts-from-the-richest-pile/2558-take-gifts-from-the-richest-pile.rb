# @param {Integer[]} gifts
# @param {Integer} k
# @return {Integer}
def pick_gifts(gifts, k)
    while k > 0
    p max_pile_index = gifts.index(gifts.max)
    p gifts[max_pile_index] = Math.sqrt(gifts[max_pile_index]).floor
    k-=1
    end 
    gifts.sum
end