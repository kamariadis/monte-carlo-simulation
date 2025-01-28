function [value] = Monte Carlo NI(M)
//    stacksize('max')
    W = rand(1, M, 'uniform');
    X = W.*W;
    value = sum(X) / M;
endfunction
