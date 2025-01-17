impl Solution {
    pub fn three_sum(mut nums: Vec<i32>) -> Vec<Vec<i32>> {
        nums.sort();
        let mut result = Vec::new();

        for i in 0..nums.len() {
            if i > 0 && nums[i] == nums[i - 1] {
                continue; // Skip duplicates for the first element
            }
            
            let mut left = i + 1;
            let mut right = nums.len() - 1;

            while left < right {
                let sum = nums[i] + nums[left] + nums[right];
                
                if sum == 0 {
                    result.push(vec![nums[i], nums[left], nums[right]]);
                    left += 1;
                    right -= 1;

                    while left < right && nums[left] == nums[left - 1] {
                        left += 1; // Skip duplicates for the second element
                    }
                    while left < right && nums[right] == nums[right + 1] {
                        right -= 1; // Skip duplicates for the third element
                    }
                } else if sum < 0 {
                    left += 1;
                } else {
                    right -= 1;
                }
            }
        }
        result
    }
}