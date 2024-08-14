class Solution {
public:
    vector<string> stringMatching(vector<string>& words) {
        sort(words.begin(), words.end(), [](const string& a, const string& b) {
            return a.size() < b.size();
        });
        
        vector<string> result;
        for (const auto& word : words) {
            for (const auto& w : words) {
                if (w != word && w.find(word) != string::npos) {
                    result.push_back(word);
                    break;
                }
            }
        }
        
        return result;
    }
};