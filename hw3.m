clear all;
close all;

time = 0 : 0.1 : 2;
p = 2 * time .* time + 4 * time + 3;
csp = cumsum(p);  % csp: 방정식 p를 적분한 형태

plot(time, csp)