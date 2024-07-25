class Solution {
public:
    int sumOfEncryptedInt(vector<int>& nums) {
        int res=0;
        for (int num : nums) {
            string numstr = to_string(num);          
            cout << numstr << endl;

            char maxdigit = *max_element(numstr.begin(), numstr.end());
            cout << maxdigit << endl;
            
            string numstrz(numstr.size(), maxdigit);
            res += stoi(numstrz);
        }
        return res;
    }
};