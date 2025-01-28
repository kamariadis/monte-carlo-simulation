function [value] = Monte_Carlo_NI(M)
    stacksize('max');
    W = rand(1, M, 'uniform');
    X = W .* W;
    value = sum(X) / M;
endfunction
