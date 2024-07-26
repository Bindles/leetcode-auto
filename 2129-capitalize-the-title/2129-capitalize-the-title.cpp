class Solution {
public:
    std::string capitalizeTitle(std::string title) {
        std::istringstream iss(title);
        std::string word, result;
        std::vector<std::string> words;

        // Split the title into words
        while (iss >> word) {
            words.push_back(word);
        }

        // Use std::transform to modify words in place
        std::transform(words.begin(), words.end(), words.begin(), [](std::string w) {
            if (w.size() <= 2) {
                std::transform(w.begin(), w.end(), w.begin(), ::tolower);
            } else {
                w[0] = std::toupper(w[0]);
                std::transform(w.begin() + 1, w.end(), w.begin() + 1, ::tolower);
            }
            return w;
        });

        // Join the words back into a single string
        return std::accumulate(words.begin(), words.end(), std::string(), [](const std::string &a, const std::string &b) {
            return a.empty() ? b : a + " " + b;
        });
    }
};