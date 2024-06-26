class Solution {
public:
    int numUniqueEmails(vector<string>& emails) {
        unordered_set<string> uniq_emails;
        for (string& email: emails) {
            uniq_emails.insert(clean(email));
        }
        return uniq_emails.size();
    }
    
private:
    string clean(string& email) {
        stringstream ss(email);
        string local, domain;
        getline(ss, local, '@');
        getline(ss, domain);

        size_t plus_pos = local.find('+');
        if (plus_pos != string::npos) {
            local = local.substr(0, plus_pos);
        }
        local.erase(remove(local.begin(), local.end(), '.'), local.end());

        return local + "@" + domain;
    }
};