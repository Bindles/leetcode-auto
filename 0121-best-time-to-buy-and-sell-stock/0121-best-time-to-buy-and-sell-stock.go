func maxProfit(prices []int) int {
  result := 0
  lowest := prices[0]
  for _, price := range prices {
	lowest = min(lowest, price)
	result = max(result, price-lowest)
  }
	return result    
}
