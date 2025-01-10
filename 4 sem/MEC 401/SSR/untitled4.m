clc;
r2 = 2; %length of crank
r3 = 6.6; %length of coupler
r4 = 5.6; %length of follower
r1 = 8; %length of fixed link

% Define angular velocity of the crank
w2 = 5; % rad/s, CCW

% Define time vector for one revolution of the crank
t = [30,60,90,120,150,180,210,240,270,300,330,360];

% Calculate angular displacements, velocities, and accelerations for each time step
for i = 1:length(t+1)
    % Calculate angular displacement of the crank
    theta2 = (i);
    
    % Calculate angles between links using geometric relations
    a = r3^2 - r4^2 - r2^2 + r1^2 - 2*r1*r2*cos(theta2);
    b = -2*r3*r1;
    c = r3^2 - r1^2 - r2^2 - r4^2 + 2*r2*r4*cos(theta2);
    theta3(i) = 2*atan2(-b-sqrt(b^2-4*a*c), 2*a); % angle of coupler
    theta4(i) = theta2 + theta3(i); % angle of follower
    
    % Calculate angular velocities using time derivative of angular displacements
    omega3(i) = r2/r3*omega2*sin(theta3(i));
    omega4(i) = omega2 + omega3(i);
    
    % Calculate angular accelerations using time derivative of angular velocities
    alpha3(i) = r2/r3*omega2*cos(theta3(i))*omega3(i) - r2/r3^2*omega2^2*sin(theta3(i));
    alpha4(i) = alpha3(i);
    
end

figure;
subplot(2,3,1);
plot(t, theta3);
title('Angular Displacement of Coupler');
xlabel('Time (s)');
ylabel('Angle (rad)');

subplot(2,3,2);
plot(t, omega3);
title('Angular Velocity of Coupler');
xlabel('Time (s)');
ylabel('Angular Velocity (rad/s)');

subplot(2,3,3);
plot(t, alpha3);
title('Angular Acceleration of Coupler');
xlabel('Time (s)');
ylabel('Angular Acceleration (rad/s^2)');

subplot(2,3,4);
plot(t, theta4);
title('Angular Displacement of Follower');
xlabel('Time (s)');
ylabel('Angle (rad)');

subplot(2,3,5);
plot(t, omega4);
title('Angular Velocity of Follower');
xlabel('Time (s)');
ylabel('Angular Velocity (rad/s)');

subplot(2,3,6);
plot(t, alpha4);
title('Angular Acceleration of Follower');
xlabel('Time (s)');
ylabel('Angular Acceleration (rad/s^2)');