func closestDivisors(num int) []int {
    i := int(math.Sqrt(float64(num + 2)))
    
    for i >= 2 {
        if (num + 1) % i == 0 {
            return []int{i, (num + 1) / i}
        } else if (num + 2) % i == 0 {
            return []int{i, (num + 2) / i}
        }
        i--
    }
    
    return []int{1, num + 1}
}