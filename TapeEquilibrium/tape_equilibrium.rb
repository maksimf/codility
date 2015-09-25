class TapeEquilibrium
  def self.solution(a)
    sum = 0
    n = a.size
    left_sum, right_sum = 0

    a.each do |e|
      sum += e
    end

    min = sum

    for i in 0..(n-2)
      left_sum += a[i]
      right_sum = sum - left_sum
      difference = (left_sum - right_sum).abs

      if difference < min
        min = difference
      end
    end

    min
  end
end
