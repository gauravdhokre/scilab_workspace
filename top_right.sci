function[mat] = top_right(M, n)
    [r, c] = size(M)
    if (n > r & n > c) then
        disp("Invalid input for n!!")
        mat = %nan
    end
    mat = M(1:n,length(M(1,:))-(n-1):length(M(1,:)))
endfunction
