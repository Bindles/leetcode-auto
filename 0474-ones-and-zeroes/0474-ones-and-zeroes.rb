# @param {String[]} strs
# @param {Integer} m
# @param {Integer} n
# @return {Integer}
def find_max_form(strs, m, n)
    Solver.new(strs, m, n).solve
end

class Solver
    def initialize(strs, m, n)
        @strs = strs
        @m = m
        @n = n
        @ns = strs.map { |s| [ s.count('0'), s.count('1') ] }.tally.to_a.map(&:flatten)
        @best = 0
    end

    def solve
        aux(0, @m, @n, 0, @strs.size)
        @best
    end

    def aux(index, m, n, acc, left)
        return false if m < 0 or n < 0
        if index == @ns.size
            @best = acc if acc > @best
            return true
        end
        return true if acc + left < @best

        a, b, k = @ns[index]

        (0..k).map do |i|
            return true if !aux(index + 1, m - i * a, n - i * b, acc + i, left - k)
        end

        true
    end
end