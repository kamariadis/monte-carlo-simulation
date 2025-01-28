mu = 1;
sigma = 0.5;

u = 1;

M = 10^(1:.25:6);

MGF = exp(u*mu+u^2*sigma^2/2);

true = zeros(1,length(M));
value = zeros(1,length(M));

for i = 1:length(M)
    [temp] = Monte_Carlo_CF(mu,sigma,u,M(i));
    true(i) = MGF
    value(i) = temp
end

//Plots the mean and the Monte Carlo estimate as functions of the number of simulations M
plot(log(M),true,"k-",log(M),value,"b-")
//xtitle("Convergence of Monte Carlo simulation")
hl=legend(['MGF';'MC estimate'])
xlabel("log(M)")
ylabel("MGF")
