function[value] = func(x)
    //f(x) = 3x + sin(x) - exp(x) = 0
    value = 3 * x + sin(x) - exp(x)
endfunction

function[root] = bisection(a, b)
    tolerence = 0.00001
    while(%t)
        m = (a + b)/2
        fa = func(a)
        fb = func(b)
        fm = func(m)
        if(fa == 0 | fb == 0 | fm == 0) then
            if(fa == 0) then
                root = a
                break
            end
            if(fb == 0) then
                root = b
                break
            end
            if(fm == 0) then
                root = m
                break
            end
        end
        if(fa < 0 & fm > 0) then
            b = m
        else
            a = m
        end
        if(abs(a-b) < tolerence) then
            if (abs(func(a)) < tolerence | abs(func(b)) < tolerence) then
                root = a
                break
            else
                disp("root doesnt exists")
                root = %nan
            end
            break
        end
    end
endfunction
