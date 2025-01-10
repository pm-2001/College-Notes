
clc,clearvars;
% r = crank_length;
% l = connecting_rod_length;
% e = eccentricity;
% Given data
r = 480; % mm
l = 1600; % mm
e = 100; % mm
omega = 20; % rad/s
t = linspace(0,(2*pi)/omega,1000);
theta1 = zeros(size(t));
theta4 = zeros(size(t));
theta3 = zeros(size(t));
r1 = zeros(size(t));

% Calculations
for i=1:length(t)
    theta2 = omega*t(i);
    B = 2*e-2*r*cos(-theta2);
    C = -2*r*e*cos(theta2)+r^2+e^2-l^2;
    r1(i) = (-B+sqrt(B*B-4*C))/2;
    theta3(i) = atan(((-r*sin(theta2))/(r1(i)+e-r*cos(theta2))));
    x = [-cos(theta1),-l*sin(theta3);-sin(theta1),l*cos(theta3)]
    y = [(r*omega*sin(theta2))/t(i) ;(r*omega*cos(theta2))/t(i)]
    m = y*(inv(x));
end
% Plotting
figure;
subplot(1,3,1)
plot(t,r1)
title('Angular Displacement');
xlabel('Time');
ylabel('Angular displacememt');