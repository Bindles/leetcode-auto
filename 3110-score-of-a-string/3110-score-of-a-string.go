func scoreOfString(s string) int {
    var count int = 0
	for i := 0; i < len(s)-1; i++ {
		count += int(math.Abs(float64(s[i]) - float64(s[i+1])))
	}
	return count    
}