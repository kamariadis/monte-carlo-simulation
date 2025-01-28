function [value] = Monte_Carlo(mu, sigma, M)
//    stacksize('max')
    W = rand(1, M, 'normal');
    X = mu + sqrt(sigma) * W;
    value = sum(X) / M;
endfunction
