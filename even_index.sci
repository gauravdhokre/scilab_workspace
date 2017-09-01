function[evenMat] = even_index(M)
    [r, c] = size(M)
    for i = 1 : r
        if(pmodulo(i, 2) == 0)
            for j = 1 : c
                if(pmodulo(j, 2) == 0)
                    evenMat(i, j) = M(i, j)
                end
            end
        end
    end
endfunction
