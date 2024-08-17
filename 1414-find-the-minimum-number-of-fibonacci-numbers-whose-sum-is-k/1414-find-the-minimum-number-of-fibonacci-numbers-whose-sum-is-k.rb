# @param {Integer} k
# @return {Integer}
def find_min_fibonacci_numbers(k)
    fib_array=[]
    a,b = 0,1
    fib_array << a
    fib_array << b

    (2..k).each do 
        a,b = b, a+b
        fib_array << b
    end
    
    count = 0
    i = fib_array.size-1

    while k > 0
        if fib_array[i] <= k
            k -= fib_array[i]
            count += 1
        end
        i -= 1
    end
    count
end

