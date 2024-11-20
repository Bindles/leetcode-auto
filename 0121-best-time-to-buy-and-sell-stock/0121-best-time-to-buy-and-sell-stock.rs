impl Solution {
    pub fn max_profit(prices: Vec<i32>) -> i32 {
        let mut result = 0;
        let mut lowest = prices[0];
        for price in prices {
            lowest = std::cmp::min(lowest,price);
            result = std::cmp::max(result, price - lowest);
        }
        return result;
    }
}

