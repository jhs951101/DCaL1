clear all;
close all;

time = 0 : 0.01 : 2;
p = 2 * time .* time + 4 * time + 3;
dp = diff(p);  % dp: ������ p�� �̺��� ����
time = 0 : 0.01 : 1.99;  % �̺��� �����ν� ������ �ϳ� �پ��Ƿ� time ������ ������ �ϳ� �� ���·� �缳����

plot(time, dp)