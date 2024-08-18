impl Solution {
    pub fn closest_divisors(num: i32) -> Vec<i32> {
        // Start with the square root of (num + 2) as an integer
        let mut i = ((num + 2) as f64).sqrt() as i32;
        
        // Loop until we find the divisors
        while i >= 2 {
            if (num + 1) % i == 0 {
                return vec![i, (num + 1) / i];
            } else if (num + 2) % i == 0 {
                return vec![i, (num + 2) / i];
            }
            i -= 1;
        }
        
        // If no divisors are found, return [1, num + 1]
        vec![1, num + 1]
    }
}
