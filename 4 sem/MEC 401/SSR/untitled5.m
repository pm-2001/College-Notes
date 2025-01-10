
% Define the given lengths
L1 = 2; % Length of crank
L2 = 6.6; % Length of coupler
L3 = 5.6; % Length of follower
L4 = 8; % Length of fixed link

% Define the angular velocity of the crank
w = 5; % rad/s

% Define the angle range for one revolution
theta = linspace(0,2*pi,1000);

% Calculate the angular displacement of the follower and coupler
theta2 = 2 * asin((L1+L2-L4)/(2*L1*L2)) + theta;
theta3 = 2 * asin((L1-L4)/(2*L1*L2)) + theta;

% Calculate the angular velocity of the follower and coupler
omega2 = w * (L1+L2-L4) ./ (L1*L2) * ones(size(theta));
omega3 = w * (L1-L4) ./ (L1*L2) * ones(size(theta));

% Calculate the angular acceleration of the follower and coupler
alpha2 = -w^2 * (L4^2 - (L1^2 + L2^2)) ./ (2*L1^2*L2^2) * ones(size(theta));
alpha3 = zeros(size(theta));

% Plot the results
figure;
subplot(3,1,1);
plot(theta,theta2,'r',theta,theta3,'b');
title('Angular Displacement');
xlabel('Crank Angle (rad)');
ylabel('Angle (rad)');
legend('Follower','Coupler');

subplot(3,1,2);
plot(theta,omega2,'r',theta,omega3,'b');
title('Angular Velocity');
xlabel('Crank Angle (rad)');
ylabel('Velocity (rad/s)');
legend('Follower','Coupler');

subplot(3,1,3);
plot(theta,alpha2,'r',theta,alpha3,'b');
title('Angular Acceleration');
xlabel('Crank Angle (rad)');
ylabel('Acceleration (rad/s^2)');
legend('Follower','Coupler');