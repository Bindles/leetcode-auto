int init=[] {ios_base::sync_with_stdio(false);cin.tie(0);return 0;}();
class Solution {
public:
    bool increasingTriplet(vector<int>& nums) {
        int a = INT_MAX, b = INT_MAX;
        for ( int num : nums) {
          if (num <= a) a = num;
          else if (num <= b) b = num;
          else return true;
        }
        return false;       
    }
};