class Solution {
public:
    int countPrefixSuffixPairs(vector<string>& words) {
        int sum = 0;
        for (size_t num = 0; num < words.size(); ++num) {
            const string& word = words[num];
            sum += count_if(words.begin(), words.begin() + num, [&word](const string& w) {
                return word.substr(0, w.size()) == w && word.substr(word.size() - w.size()) == w;
            });
        }
        return sum;
    }
};