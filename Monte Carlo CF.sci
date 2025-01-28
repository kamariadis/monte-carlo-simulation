function value = MonteCarloCF(mu, sigma, u, M)
    W = rand(1, M, "normal");
    X = exp(u * mu + u * sigma * W);
    value = sum(X) / M;
endfunction
