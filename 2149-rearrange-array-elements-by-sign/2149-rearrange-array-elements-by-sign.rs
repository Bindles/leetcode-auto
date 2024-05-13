impl Solution {
    pub fn rearrange_array(nums: Vec<i32>) -> Vec<i32> {
        let (positives, negatives): (Vec<i32>, Vec<i32>) = nums.into_iter().partition(|&x| x > 0);
        let mut result = vec![];
        
        for (positive, negative) in positives.into_iter().zip(negatives.into_iter()) {
            result.push(positive);
            result.push(negative);
        }
        result
    }
}
