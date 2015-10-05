def solution(a)
  occ = []
  a.each do |a_el|
    occ[a_el] = 1 if a_el > 0
  end

  i = 1
  while true do
    break if occ[i] == nil

    i = i + 1
  end

  return i
end
