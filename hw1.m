clear all;
close all;

time = 0 : 0.1 : 2;  % time: 0 ~ 2 사이의 시간 내에서 0.1만큼 변화하는 것을 표현하기 위한 시간 변수
p = 2 * time .* time + 4 * time + 3;  % p: 좌표계에 표현하기 위한 방정식

plot(time, p)  % 방정식 p를 time 구간 내에서 좌표계로 표현한 형태를 보여줌