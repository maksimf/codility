def solution(a)
    east = 0
    west = 0
    passed_cars = 0
    for i in (0...a.size) do
        if a[i] == 0
            east += 1
            if west > 0 && east > 0
                passed_cars += 1
                west -= 1
                east -= 1
            end
        else
            west += 1
            if west > 0 && east > 0
                passed_cars += 1
                west -= 1
                east -= 1
            end
        end
    end

    if west != 0 && east != 0
        if west < east
            passed_cars += west
        else
            passed_cars += east
        end
    end

    passed_cars
end
