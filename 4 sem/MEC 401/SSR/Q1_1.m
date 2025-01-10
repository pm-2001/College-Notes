% Define link lengths
r2 = 2; % crank length
r3 = 6.6; % coupler length
r4 = 5.6; % follower length
r1 = 8; % fixed link length

% Define angular velocity of the crank
omega2 = 5; % rad/s, CCW

% Define time vector for one revolution of the crank
t = linspace(0, 2*pi/omega2, 1000);

% Calculate angular displacements, velocities, and accelerations for each time step
for i = 1:length(t)
    % Calculate angular displacement of the crank
    theta2 = omega2*t(i);
    
    % Calculate angles between links using geometric relations
    A = r3^2 - r4^2 - r2^2 + r1^2 - 2*r1*r2*cos(theta2);
    B = -2*r3*r1;
    C = r3^2 - r1^2 - r2^2 - r4^2 + 2*r2*r4*cos(theta2);
    theta3(i) = 2*atan2(-B-sqrt(B^2-4*A*C), 2*A); % angle of coupler
    theta4(i) = theta2 + theta3(i); % angle of follower
    
    % Calculate angular velocities using time derivative of angular displacements
    omega3(i) = r2/r3*omega2*sin(theta3(i));
    omega4(i) = omega2 + omega3(i);
    
    % Calculate angular accelerations using time derivative of angular velocities
    alpha3(i) = r2/r3*omega2*cos(theta3(i))*omega3(i) - r2/r3^2*omega2^2*sin(theta3(i));
    alpha4(i) = alpha3(i);
end

% Plot angular displacements, velocities, and accelerations
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