int init=[]{ios_base::sync_with_stdio(false);cin.tie(0);cout.tie(0);return 0;}();
class Solution {
public:
    string findLexSmallestString(string s, int a, int b) {
        unordered_set<string> seen;
        queue<string> q;
        q.push(s);
        string smallest = s;

        while (!q.empty()) {
            string current = q.front();
            q.pop();
            if (seen.count(current)) continue;
            seen.insert(current);
            smallest = min(smallest, current);

            // Apply operation 1: Add `a` to all odd-indexed positions
            string modified = current;
            for (int i = 1; i < current.size(); i += 2) {
                modified[i] = (modified[i] - '0' + a) % 10 + '0';
            }
            if (!seen.count(modified)) q.push(modified);

            // Apply operation 2: Rotate string by `b` positions
            string rotated = current.substr(current.size() - b) + current.substr(0, current.size() - b);
            if (!seen.count(rotated)) q.push(rotated);
        }

        return smallest;
    }
};