WITH Buy_Sell_Diff AS (
    SELECT
        stock_name,
        SUM(
            CASE 
                WHEN operation = 'Sell' THEN price 
                ELSE -price 
            END
        ) AS gain_loss
    FROM
        Stocks
    GROUP BY
        stock_name, operation_day
)
SELECT
    stock_name,
    SUM(gain_loss) AS capital_gain_loss
FROM
    Buy_Sell_Diff
GROUP BY
    stock_name
ORDER BY
    stock_name;
