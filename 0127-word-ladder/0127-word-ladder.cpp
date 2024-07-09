int init=[] {ios_base::sync_with_stdio(false);cin.tie(0);return 0;}();
class Solution {
public:
    int ladderLength(string beginWord, string endWord, vector<string>& wordList) {
        unordered_map<string, vector<string>> graph;

        for (const string& word : wordList) {
            for (size_t i = 0; i < beginWord.length(); ++i) {
                string key = word.substr(0, i) + '*' + word.substr(i + 1);
                graph[key].push_back(word);
            }
        }

        queue<pair<string, int>> queue;
        queue.push({beginWord, 1});
        unordered_set<string> visited;
        visited.insert(beginWord);

        while (!queue.empty()) {
            auto [cur, level] = queue.front();
            queue.pop();

            for (size_t i = 0; i < beginWord.length(); ++i) {
                string inter = cur.substr(0, i) + '*' + cur.substr(i + 1);

                for (const string& word : graph[inter]) {
                    if (word == endWord) {
                        return level + 1;
                    }

                    if (visited.find(word) == visited.end()) {
                        visited.insert(word);
                        queue.push({word, level + 1});
                    }
                }

                graph[inter].clear();
            }
        }

        return 0;
    }
};