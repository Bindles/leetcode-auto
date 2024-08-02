class Solution {
public:
    int maxDistance(vector<int>& colors) {
        int n=colors.size()-1, maxDist = 0;
        int l = 0, r = n;
        
        // Start by moving r to the left to find the farthest different color from the start
        while (r > l && colors[l] == colors[r]) {
            r--;
        }
        maxDist = r - l;

        // Then move l to the right to find the farthest different color from the end
        r = n;
        while (l < r && colors[l] == colors[r]) {
            l++;
        }
        maxDist = max(maxDist, r - l);

        return maxDist;
    }
};
