require 'set'

def solution(a)
    set = Set.new
    for i in (0..(a.length)-1) do
        set.add(a[i]) if a[i] <= a.length
    end

    set.length == a.length ? 1 : 0
end
