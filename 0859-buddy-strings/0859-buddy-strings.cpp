class Solution {
public:
    bool buddyStrings(string s, string goal) {
        if (s.size() != goal.size()) {
            return false;
        }
        string s1;
        string s2;
        set<char> chars;
        bool repeated = false;

        for (size_t i = 0; i < s.size(); ++i) {
            repeated = repeated || !chars.insert(s[i]).second;
            if (s[i] != goal[i]) {
                s1 += s[i];
                s2 += goal[i];
            }
        }
        
        return (s1.size() == 2 && s1 == string(s2.rbegin(), s2.rend())) || (s1.size() == 0 && repeated == true);
    }
};
