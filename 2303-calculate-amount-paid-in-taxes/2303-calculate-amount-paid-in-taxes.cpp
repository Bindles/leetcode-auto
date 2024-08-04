int init=[]{ios_base::sync_with_stdio(false);cin.tie(0);cout.tie(0);return 0;}();
class Solution {
public:
    double calculateTax(vector<vector<int>>& brackets, int income) {
        double tax = 0;
        int prevUpper = 0;
        for (const auto& bracket : brackets) {
            int upper = bracket[0];
            double percentage = bracket[1] / 100.0;

            if (income > upper) {
                tax += (upper - prevUpper) * percentage;
                prevUpper = upper;
            } else {
                tax += (income - prevUpper) * percentage;
                return tax;
            }
        }
        return 0;
    }
};

