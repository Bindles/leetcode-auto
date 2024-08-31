class Solution {
public:
    bool detectCapitalUse(string word) {
        // Check if all letters are uppercase
        if (word == toUpper(word)) return true;
        
        // Check if all letters are lowercase
        if (word == toLower(word)) return true;
        
        // Check if only the first letter is uppercase
        if (isupper(word[0]) && word.substr(1) == toLower(word.substr(1))) return true;
        
        return false;
    }
    
    string toUpper(const string& s) {
        string result = s;
        transform(result.begin(), result.end(), result.begin(), ::toupper);
        return result;
    }
    
    string toLower(const string& s) {
        string result = s;
        transform(result.begin(), result.end(), result.begin(), ::tolower);
        return result;
    }
};
