package main

func isPossible(target []int) bool {
	sum := 0
	for _, num := range target {
		sum += num
	}

	for max(target) > 1 {
		maxVal := max(target)
		restSum := sum - maxVal

		if restSum <= 0 || restSum >= maxVal {
			return false
		}

		newVal := maxVal % restSum
		if newVal == 0 && restSum > 1 {
			return false
		}

		sum = restSum + newVal
		updateMax(target, newVal)
	}
	return true
}

func max(arr []int) int {
	maxVal := arr[0]
	for _, num := range arr {
		if num > maxVal {
			maxVal = num
		}
	}
	return maxVal
}

func updateMax(arr []int, newVal int) {
	for i := range arr {
		if arr[i] == max(arr) {
			arr[i] = newVal
			break
		}
	}
}
