clc;
r2=480; %crank length
r3=1600; %connecting rod length
e=100; %eccentricity;
% Define angular velocity of the crank
omega2 = 20; % rad/s, CCW
% Define time vector for one revolution of the crank
t = linspace(0, 2*pi/omega2, 1000); 
% Calculate angular displacements, velocities, and accelerations for each time step
for i=1:length(t)
 %calculate angular displacement of crank
 theta2 = omega2 * t(i);
 % Calculate angles between links using geometric relations
 B=(2*e -2*r2*cos(theta2));
 C=-2*r2*e*cos(theta2) +r2^2+e^2-r3^2;
 r1(i)=(-B + sqrt(B*B -4*C))/2;
 theta3(i) = atan((-r2*sin(theta2))/(r1(i)+e-r2*cos(theta2)));
 v1(i)=(-r2*omega2*sin(theta2-theta3(i))/cos(theta3(i)));
 omega3(i) = (((r2*omega2 * cos(theta2))/(-r3*cos(theta3(i)))));
 alpha3(i) = ((-r2*cos(theta2) * omega2/t(i) + r2*omega2*omega2*sin(theta2) + r3*omega3(i)*omega3(i)*sin(theta3(i)))/(r3*cos(theta3(i))));
 a1(i) = -r3*alpha3(i)*sin(theta3(i)) - r2*omega2*sin(theta2)/t(i) -r2*omega2*omega2*cos(theta2) - r3*omega3(i)*omega3(i)*cos(theta3(i));
end
figure;
subplot(3,1,1);
plot(t, r1);
title('Angular Displacement of slider');
xlabel('Time (s)');
ylabel('Angle (rad)');
subplot(3,1,2);
plot(t, v1);
title('Angular Velocity of slider');
xlabel('Time (s)');
ylabel('Angular Velocity (rad/s)');
subplot(3,1,3);
plot(t, a1);
title('Angular acceleration of slider');
xlabel('Time (s)');
ylabel('Angular Acceleration (rad/s)');