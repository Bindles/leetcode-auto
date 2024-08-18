class Solution {
public:
    vector<int> findDivisors(int target) {
        for (int i = static_cast<int>(sqrt(target)); i > 0; --i) {
            if (target % i == 0) {
                return {i, target / i};
            }
        }
        return {};
    }

    vector<int> closestDivisors(int num) {
        vector<int> div1 = findDivisors(num + 1);
        vector<int> div2 = findDivisors(num + 2);

        if (abs(div1[0] - div1[1]) < abs(div2[0] - div2[1])) {
            return div1;
        } else {
            return div2;
        }
    }
};