clear all;
close all;

time = 0 : 0.01 : 2;
p = 2 * time .* time + 4 * time + 3;
csp = cumsum(p);  % csp: ������ p�� ������ ����

plot(time, csp)