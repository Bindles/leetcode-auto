class Solution {
public:
    std::string capitalizeTitle(std::string title) {
        std::istringstream iss(title);
        std::vector<std::string> words;
        std::string word, result;

        // Split the title into words
        while (iss >> word) {
            words.push_back(word);
        }

        // Process each word
        std::transform(words.begin(), words.end(), words.begin(), [](std::string& w) {
            if (w.size() <= 2) {
                std::transform(w.begin(), w.end(), w.begin(), ::tolower);
            } else {
                w[0] = std::toupper(w[0]);
                std::transform(w.begin() + 1, w.end(), w.begin() + 1, ::tolower);
            }
            return w;
        });

        // Join the words back into a single string
        for (size_t i = 0; i < words.size(); ++i) {
            result += words[i];
            if (i != words.size() - 1) {
                result += " ";
            }
        }

        return result;
    }
};