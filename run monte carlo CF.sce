% Parameters
mu = 1;
sigma = 0.5;
u = 1;

M = 10.^(1:0.25:6);

MGF = exp(u * mu + (u^2 * sigma^2) / 2);

true = zeros(1, length(M));
value = zeros(1, length(M));

for i = 1:length(M)
    % Call the Monte Carlo function to estimate the MGF
    temp = Monte_Carlo_CF(mu, sigma, u, M(i));
    
    % Store true MGF and Monte Carlo estimate
    true(i) = MGF;
    value(i) = temp;
end

figure;
plot(log10(M), true, 'k-', log10(M), value, 'b-');
xlabel('log_{10}(M)');
ylabel('MGF');
title('Convergence of Monte Carlo Simulation');
legend('True MGF', 'Monte Carlo Estimate');

function estimate = Monte_Carlo_CF(mu, sigma, u, M)
    samples = mu + sigma * randn(1, M);
    estimate = mean(exp(u * samples));
end
