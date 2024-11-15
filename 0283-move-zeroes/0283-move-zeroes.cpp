class Solution {
public:
    void moveZeroes(vector<int>& nums) {
        int non_zero_index = 0;
        
        // Move all non-zero elements to the beginning of the array
        for (int num : nums) {
            if (num != 0) {
                nums[non_zero_index] = num;
                non_zero_index++;
            }
        }
        
        // Fill the remaining positions with zeros
        for (int i = non_zero_index; i < nums.size(); i++) {
            nums[i] = 0;
        }      
    }
};