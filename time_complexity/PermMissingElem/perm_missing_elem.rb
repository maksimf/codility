def solution(a)
    n = a.size
    expected_sum = (n+1) * (n+2) / 2
    sum = 0

    a.each do |e|
      sum += e
    end

    expected_sum - sum
end
