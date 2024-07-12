int init=[] {ios_base::sync_with_stdio(false);cin.tie(0);return 0;}();
class Solution {
public:
    int arrangeCoins(int n) {
        int stair_cost=1, stairs_completed=0;

        while (n >= stair_cost) {
            n -= stair_cost;
            stairs_completed+=1;
            stair_cost+=1;
        }
        return stairs_completed;          
    }
};