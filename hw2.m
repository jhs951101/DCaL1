clear all;
close all;

time = 0 : 0.1 : 2;
p = 2 * time .* time + 4 * time + 3;
dp = diff(p);  % dp: 방정식 p를 미분한 형태
time = 0 : 0.1 : 1.9;  % 미분을 함으로써 공간이 하나 줄어드므로 time 변수도 공간을 하나 뺀 형태로 재설정함

plot(time, dp)