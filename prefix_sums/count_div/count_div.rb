def solution(a, b, k)
    diff = b - a + 1
    if diff % k == 0
        diff / k
    else
        diff / k + 1
    end
end
