% t is time
% T is Time to Double (TTD)
syms t T b

% Initial Cases on Day 0
x = 10;

% Mortality Rate: 1%
m = 0.01;

% Estimated People Infected on the Day of 20 Days Prior
num_i = 1/m;

% Average Time From Infection to Death
i2d = 20;

% Total Number of Cases 21 Days Prior
num_c = solve(num_i == b*2^(1/T) - b, b);

% Days Elapsed Since First Infection
F(T) = solve(num_c/x == 2^(t/T), t) + i2d;

% Time To Double in Tennessee Ranging From 2 to 6 Days
T = [2 6];

%% Plot

fplot(F, T)
title('Time from First Cases VS. Time-to-Double');
xlabel('Time-to-Double (Days)');
ylabel('Time from First Cases (Days)');

