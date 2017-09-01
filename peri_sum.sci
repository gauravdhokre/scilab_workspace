function[sumation] = peri_sum(A)
    [r, c] = size(A)
    sumation = 0
    for i = 1 : c
        sumation = sumation + A(1, i)
        sumation = sumation + A(r, i)
    end
    for i = 2 : (r - 1)
        sumation = sumation + A(i, 1)
        sumation = sumation + A(i, c)
    end
endfunction
