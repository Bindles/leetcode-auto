func longestPalindrome(s string) int {
    sc := make(map[rune]int)
    result := 0

    for _, char := range s {
        sc[char]++
    }

    for _, val := range sc {
        result += (val / 2) * 2
        if result%2==0 && val%2==1 {
            result++
        }
    }
    return result    
}