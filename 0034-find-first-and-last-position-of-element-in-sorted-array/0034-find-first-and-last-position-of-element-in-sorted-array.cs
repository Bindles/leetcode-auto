public class Solution {
    public int[] SearchRange(int[] nums, int target) {
        List<int> res = new List<int>();
        for (int i = 0; i < nums.Length; i++) {
            if (nums[i] == target) {
                res.Add(i);
            }
        }
        
        if (res.Count == 0) {
            return new int[] {-1, -1};
        } else {
            return new int[] {res[0], res[res.Count - 1]};
        }
    }
}
