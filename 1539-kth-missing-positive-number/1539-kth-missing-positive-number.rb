# @param {Integer[]} arr
# @param {Integer} k
# @return {Integer}
def find_kth_positive(arr, k)
    x=1
    index=0
    missing=[]
    until index == arr.size
        if arr[index] > x
            missing << x
            x+=1
            if missing.size == k
                return missing.last
            end
        else
            x+=1
            index+=1
        end
    end
    if missing.size > 0
        return missing.last + missing.size
    else
        return arr.last + k
    end 

end