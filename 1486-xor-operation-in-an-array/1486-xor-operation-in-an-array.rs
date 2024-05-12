impl Solution {
    pub fn xor_operation(n: i32, start: i32) -> i32 {
        (0..n).map(|index| start + 2 * index).fold(0, |acc, num| acc ^ num)
    }
}