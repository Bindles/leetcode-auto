class Solution {
public:
    int distributeCandies(int n, int limit) {
        int res=0;
        for (int i=0; i <= limit; ++i) {
            int minCandies = max(0, n - i - limit);
            int maxCandies = min(limit, n - i);
            res += (maxCandies >= minCandies) ? (maxCandies - minCandies + 1) : 0;
        }
        return res;
    }
};