int init=[]{ios_base::sync_with_stdio(false);cin.tie(0);cout.tie(0);return 0;}();
class Solution {
public:
    int arraySign(std::vector<int>& nums) {
        int negativeCount = 0;
        
        for (int num : nums) {
            if (num == 0) return 0;
            else if (num < 0) negativeCount++;
        }
        return (negativeCount % 2 == 0) ? 1 : -1;
    }
};
