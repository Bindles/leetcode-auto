class Solution {
public:
    vector<int> numberOfLines(vector<int>& widths, string s) {
        unordered_map<char, int> costs;
        for (int i = 0; i < 26; ++i) costs['a' + i] = widths[i];
        int lines = 1;
        int width = 0;

        for (char chr : s) {
            int current = width + costs[chr];

            if (current > 100) {
                ++lines;
                width = costs[chr];
            } else {
                width = current;
            }
        }

        return {lines, width};
    }
};