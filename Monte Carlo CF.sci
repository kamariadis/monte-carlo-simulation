function [value] = Monte Carlo CF(mu, sigma, u, M)
//    stacksize('max')
    W = rand(1, M, 'normal');
    X = exp(u * mu + u * sigma * W);
    value = sum(X) /M;
endfunction
