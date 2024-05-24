# @param {Integer[]} start_time
# @param {Integer[]} end_time
# @param {Integer} query_time
# @return {Integer}
def busy_student(start_time, end_time, query_time)
    start_time.zip(end_time).map{|a,b| (a..b).to_a}.count{|pair| pair.include?(query_time)}
end