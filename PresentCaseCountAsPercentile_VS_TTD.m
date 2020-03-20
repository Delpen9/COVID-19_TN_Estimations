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

% Total Number of Cases 21 Days Prior
num_c = solve(num_i == b*2^(1/T) - b, b);

% Days Elapsed Since First Infection
F(T) = solve(num_c/x == 2^(t/T), t) + i2d;

% Estimated True Case Count
X(T) = x*2^(F(T)/T);

% Approximate Population of Tennessee
P = 6770000;

Per(T) = X(T)/P*100;

% Time To Double in Tennessee Ranging From 2 to 6 Days
T = [2 6];

%% Plot

fplot(Per, T)
title('Present Percent Population Infected in TN VS. Time-to-Double');
xlabel('Time-to-Double (Days)');
ylabel('Present Percent Population Infected in TN (%)');


