require 'set'

def solution(x, a)
    steps = Set.new
    for i in (0..(a.length-1)) do
        steps.add a[i] if a[i] <= x

        return i if steps.length == x
    end

    return -1
end
