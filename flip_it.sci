function[w] = flip_it(v)
    len_of_v = length(v)
    for i = 1 : len_of_v
        w(1, ((len_of_v + 1) - i)) = v(1, i)
    end
endfunction
