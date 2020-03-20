syms t T

% Time To Double in Tennessee (Assumed 2 Days)
T = 6; 

% Initial Cases on Day 0
x = 10;

% Mortality Rate: 1%
m = 0.01;

% Estimated People Infected 20 Days Prior
num_i = 1/m;

% Average Time From Infection to Death
i2d = 20;

% Total Number of Cases 21 Days Prior
num_c = solve(num_i == b*2^(1/T) - b, b);

% Days Elapsed Since First Infection
F = solve(num_c/x == 2^(t/T), t) + i2d;

% Estimated True Case Count
X = x*2^(F/T);

% Future Projection of Case Count
Inf(t) = X*2^(t/T);

% Time in the Future in Days
t = [0 14];

%% Plot

fplot(Inf, t)
title('Future Population Infected in TN VS. Time (TTD = 6)');
xlabel('Time (Days)');
ylabel('Future Population Infected in TN (10 Thousand People)');



