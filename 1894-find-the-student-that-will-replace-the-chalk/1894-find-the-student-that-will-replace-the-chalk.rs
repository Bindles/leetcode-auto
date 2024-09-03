impl Solution {
    pub fn chalk_replacer(chalk: Vec<i32>, k: i32) -> i32 {
        let mut k = k as i64; // Convert k to 64-bit integer
        let chalksum: i64 = chalk.iter().map(|&x| x as i64).sum(); // Calculate total chalk sum as i64
        k %= chalksum; // Modulo operation

        for (i, &c) in chalk.iter().enumerate() {
            if k < c as i64 {
                return i as i32; // Return the student index as i32
            }
            k -= c as i64; // Reduce k by the chalk used
        }

        0 // Default return (should not be reached)
    }
}
