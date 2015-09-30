require 'pry'

# Working version
# def solution(n, a)
#   m = a.size
#   counters = []
#   max = 0
#   current_base = 0
#   maxed = false

#   for i in 0...m do
#     if a[i] <= n
#       counters[a[i] - 1] = current_base if counters[a[i] - 1] == nil
#       if maxed
#         counters[a[i] - 1] = current_base + 1
#         maxed = false
#       else
#         counters[a[i] - 1] = counters[a[i] - 1] + 1
#       end

#       max = counters[a[i] - 1] if max < counters[a[i] - 1]
#     else
#       maxed = true
#       current_base = max
#     end
#   end

#   for j in 0...n do
#     counters[j] = current_base if counters[j] == nil || counters[j] < current_base
#   end

#   counters
# end

# WIP version
def solution(n, a)
  m = a.size
  max = 0
  max_counters = false
  counters = []

  for i in 0...m do
    counters[a[i] - 1] = max if counters[a[i] - 1] == nil
    max = counters[a[i] - 1] if counters[a[i] - 1] > max

    if a[i] > n
      max_counters = true
    else
      if max_counters
        counters[a[i] - 1] = max + 1
        max_counters = false
      else
        counters[a[i] - 1] = counters[a[i] - 1] + 1
      end
    end
  end
binding.pry
  for j in 0...n do
    counters[j] = max if counters[j] == nil || counters[j] < max
  end

  counters
end

def test
  result = solution(5, [3, 4, 4, 6, 1, 4, 4])

  if result == [3, 2, 2, 4, 2]
    true
  else
    false
  end
end
