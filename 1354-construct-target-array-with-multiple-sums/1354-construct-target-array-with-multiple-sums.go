func isPossible(target []int) bool {
	sort.Sort(sort.Reverse(sort.IntSlice(target)))
	sum := 0
	for _, num := range target {
		sum += num
	}
	for target[0] > 1 {
		maxVal := target[0]
		restSum := sum - maxVal
		if restSum <= 0 || restSum >= maxVal {
			return false
		}
		newVal := maxVal % restSum
		if newVal == 0 && restSum > 1 {
			return false
		}
		sum = restSum + newVal
		target[0] = newVal
		sort.Sort(sort.Reverse(sort.IntSlice(target)))
	}
	return true
}