int init=[] {ios_base::sync_with_stdio(false);cin.tie(0);return 0;}();
class Solution {
public:
    int findTheWinner(int n, int k) {
        int winner = 0;
        for (int i=2; i<=n; ++i) {
            winner = (winner + k) % i;
        }
        return winner + 1;
    }
};
