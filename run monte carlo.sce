mu = 1.119;
sigma = 0.5;

M = 10^(1:.5:3);

true = zeros(1, length(M));
value = zeros(1, length(M));

for i = 1:length(M)
    [temp] = Monte Carlo(mu, sigma, M(i));
    true(i) = mu
    value(i) = temp
end

//Plots the mean and the Monte Carlo estimate as functions of the number of simulations M
plot(log(M),true,"k-",log(M),value,"b-")
//xtitle("Convergence of Monte Carlo simulation")
//hl=legend(['mean';'MC estimate'])
//xlabel("log(M)")
//ylabel("Mean")
