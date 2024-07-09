int init=[] {ios_base::sync_with_stdio(false);cin.tie(0);return 0;}();
class Solution {
public:
    vector<vector<int>> floodFill(vector<vector<int>>& image, int sr, int sc, int color) {
        int currentColor = image[sr][sc];
        if (currentColor == color) return image;
        
        stack<pair<int, int>> pixels;
        pixels.push({sr, sc});
        
        while (!pixels.empty()) {
            auto [r, c] = pixels.top();
            pixels.pop();
            
            if (r >= 0 && r < image.size() && c >= 0 && c < image[0].size() && image[r][c] == currentColor) {
                image[r][c] = color;
                pixels.push({r+1, c});
                pixels.push({r-1, c});
                pixels.push({r, c+1});
                pixels.push({r, c-1});
            }
        }
        
        return image;
    }
};