class Solution

=begin
    :type nums: Integer[]
=end
    def initialize(nums)
      @n=nums  
    end


=begin
    :rtype: Integer[]
=end
    def reset()
      @n  
    end


=begin
    :rtype: Integer[]
=end
    def shuffle()
      @n.shuffle
    end


end

# Your Solution object will be instantiated and called as such:
# obj = Solution.new(nums)
# param_1 = obj.reset()
# param_2 = obj.shuffle()