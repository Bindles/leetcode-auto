int init=[]{ios_base::sync_with_stdio(false);cin.tie(0);cout.tie(0);return 0;}();
class Solution {
public:
    string mostCommonWord(string paragraph, vector<string>& banned) {
        unordered_set<string> bset(banned.begin(), banned.end());
        unordered_map<string, int> wordtally;
        string word, most_common;
        int max_count = 0;
        
        for (auto& chr : paragraph) {
            chr = isalpha(chr) ? tolower(chr) : ' ';
        }
        
        stringstream ss(paragraph);
        while (ss >> word) {
            if (bset.find(word) == bset.end()) {
                wordtally[word]++;
                if (wordtally[word] > max_count) {
                    max_count = wordtally[word];
                    most_common = word;
                }
            }
        }
        
        return most_common;
    }
};