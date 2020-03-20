% t is time
% T is Time to Double (TTD)
syms t T

% Initial Cases on Day 0
x = 10;

% Mortality Rate: 1%
m = 0.01;

% Estimated People Infected 20 Days Prior
num_i = 1/m;

% Average Time From Infection to Death
i2d = 20;

% Days Elapsed Since First Infection
F(T) = solve(num_i/x == diff(2^(t/T), t), t) + i2d;

% Time To Double in Tennessee Ranging From 2 to 6 Days
T = [2 6];

%% Plot

fplot(F, T)
title('Time from First Cases VS. Time-to-Double');
xlabel('Time-to-Double (Days)');
ylabel('Time from First Cases (Days)');

