clear all;
close all;

ts = 0.01;  % ts: 시간 내에서 얼만큼 변화하는지를 의미하는 값
time = -5 : ts : 5;  % time: -5 ~ 5 사이의 시간 내에서 ts(0.01)만큼 변화하는 것을 표현하기 위한 시간 변수
tau = 2;  % tau: 삼각 및 사각 펄스를 표현하기 위해 사용되는 타우(τ)

A = 1;

X = Function_201401793_Rect(time, ts, tau);  % X: 사각 펄스, Y: 삼각 펄스
Y = Function_201401793_Triangular(time, ts, tau);  % 삼각 및 사각 펄스를 표현하기 위한 변수를 세팅 (함수 호출)

figure
plot(time, A*X);  % 사각 펄스를 time 구간 내에서 좌표계로 표현한 형태를 보여줌
hold on;  % 후에 삼각 펄스를 표현할 때 이전의 사각 펄스가 지워지지 않도록 하기 위해 선언함 

plot(time, A*Y);  % 삼각 펄스를 time 구간 내에서 좌표계로 표현한 형태를 보여줌
grid on;  % 좌표계 내에 체크 무늬 형태로 윤곽선을 보여주기 위해 사용

axis([min(time), max(time), 0, 1.5*A]);  % x축은 time의 최소값(-5) ~ time의 최대값(5) 사이에서 표현
                                         % y축은 0 ~ 1.5 사이에서 표현
xlabel('time[sec]');  % x축선 근처에 'time[sec]'라는 문구를 추가함
title('rect(t) & triangular(t)');  % 제목을 'rect(t) & triangular(t)'라고 설정함
legend('rect(t)', 'triangular(t)');  % 범례를 추가한 다음 이름은 각각 'rect(t)', 'triangular(t)' 으로 설정함