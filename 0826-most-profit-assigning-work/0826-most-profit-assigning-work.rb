# @param {Integer[]} difficulty
# @param {Integer[]} profit
# @param {Integer[]} worker
# @return {Integer}
def max_profit_assignment(difficulty, profit, worker)
  jobs = difficulty.zip(profit).sort
  worker.sort!
  max_profit = best_profit_so_far = job_index = 0
  
  worker.each do |w|

    while job_index < jobs.length && jobs[job_index][0] <= w
      best_profit_so_far = [best_profit_so_far, jobs[job_index][1]].max
      job_index += 1
    end

    max_profit += best_profit_so_far
  end
  max_profit
end