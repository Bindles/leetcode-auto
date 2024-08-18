class Cashier

=begin
    :type n: Integer
    :type discount: Integer
    :type products: Integer[]
    :type prices: Integer[]
=end
    def initialize(n, discount, products, prices)
        @n = n
        @discount = discount
        @count = 0
        @product_prices = {}

        # Map each product to its corresponding price
        products.each_with_index do |product, index|
            @product_prices[product] = prices[index]
        end
    end

=begin
    :type product: Integer[]
    :type amount: Integer[]
    :rtype: Float
=end
    def get_bill(product, amount)
        @count += 1
        bill = 0.0

        # Calculate the bill
        product.each_with_index do |prod, index|
            bill += @product_prices[prod] * amount[index]
        end

        # Apply discount if this is the n-th customer
        if @count % @n == 0
            bill *= (100 - @discount) / 100.0
        end

        bill
    end

end

# Example usage:
# obj = Cashier.new(n, discount, products, prices)
# param_1 = obj.get_bill(product, amount)