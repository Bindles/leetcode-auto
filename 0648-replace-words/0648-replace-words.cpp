class Solution {
public:
    string replaceWords(vector<string>& dictionary, string sentence) {
        string result;
        sort(dictionary.begin(), dictionary.end(), [](const string& a, const string& b){
            return a.size()<b.size();
        });
        istringstream iss(sentence);
        string s;
        while ( getline( iss, s, ' ' ) ) {
            string sub_str = s.c_str();
            for(auto& item: dictionary) {
                if(item == sub_str.substr(0, item.size())) {
                    sub_str = item;
                    break;
                }
            }
            result+=sub_str+' ';
        }
        return result.substr(0, result.size()-1);
    }
};