class Solution {
    func closestDivisors(_ num: Int) -> [Int] {
        var i = Int(sqrt(Double(num + 2)))
        
        while i >= 2 {
            if (num + 1) % i == 0 {
                return [i, (num + 1) / i]
            } else if (num + 2) % i == 0 {
                return [i, (num + 2) / i]
            }
            i -= 1
        }
        
        return [1, num + 1]
    }
}
