class Solution {
    func largestMultipleOfThree(_ digits: [Int]) -> String {
        var sum = digits.reduce(0, +)

        // Group digits by their remainder when divided by 3
        var groups = [0: [Int](), 1: [Int](), 2: [Int]()]
        for digit in digits {
            groups[digit % 3, default: [Int]()].append(digit)
        }

        // Adjust the groups based on the sum's remainder
        if sum % 3 == 1 {
            if !groups[1]!.isEmpty {
                groups[1]!.sort()
                groups[1]!.removeFirst()
            } else {
                groups[2]!.sort()
                for _ in 0..<2 where !groups[2]!.isEmpty {
                    groups[2]!.removeFirst()
                }
            }
        } else if sum % 3 == 2 {
            if !groups[2]!.isEmpty {
                groups[2]!.sort()
                groups[2]!.removeFirst()
            } else {
                groups[1]!.sort()
                for _ in 0..<2 where !groups[1]!.isEmpty {
                    groups[1]!.removeFirst()
                }
            }
        }

        // Combine all the digits from the groups
        var result = (groups[0]! + groups[1]! + groups[2]!).sorted(by: >)

        // Edge case: if result is empty, return an empty string
        if result.isEmpty {
            return ""
        }
        
        // Handle leading zeros
        if result[0] == 0 {
            return "0"
        }

        // Convert the result array to a string
        return result.map { String($0) }.joined()
    }
}
