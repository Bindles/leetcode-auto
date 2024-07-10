# @param {Character[]} letters
# @param {Character} target
# @return {Character}
def next_greatest_letter(letters, target)
    low = 0
    high = letters.size-1
    while(low <= high)
        mid = (low + high) / 2
        if(letters[mid] > target)
          high = mid - 1
        else
          low = mid + 1
        end
    end
    return letters[low % letters.size]
end