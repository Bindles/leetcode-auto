func maxProfit(prices []int) int {
    maxprofit := 0
    left := 0
    for right := 1; right < len(prices); right++ {
        if prices[left] > prices[right] {
            left = right
        } else {
            maxprofit = max(maxprofit, prices[right]-prices[left])
        }
    }
    return maxprofit
}
