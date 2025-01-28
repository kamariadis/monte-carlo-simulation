mu = 1.119;
sigma = 0.5;
M = 10 .^ (1:0.5:3);
true_values = mu * ones(1, length(M));
mc_values = zeros(1, length(M));

for i = 1:length(M)
    [temp] = MonteCarloCF(mu, sigma, 1, M(i));
    mc_values(i) = temp; // Store Monte Carlo estimate
end

plot(log10(M), true_values, "k-", log10(M), mc_values, "b-");
xtitle("Convergence of Monte Carlo Simulation");
hl = legend(['True Mean'; 'MC Estimate']);
xlabel("log(M)");
ylabel("Mean");
