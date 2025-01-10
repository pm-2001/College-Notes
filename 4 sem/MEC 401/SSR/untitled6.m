% Define constants
l = 2; % Length of crank
r = 8; % Length of fixed link
d = 5.6; % Length of follower
e = 6.6; % Length of coupler
omega = 5; % Angular velocity of crank

% Define arrays to store data
theta4_array = zeros(360,1); % Follower angular displacement
omega4_array = zeros(360,1); % Follower angular velocity
alpha4_array = zeros(360,1); % Follower angular acceleration
theta3_array = zeros(360,1); % Coupler angular displacement
omega3_array = zeros(360,1); % Coupler angular velocity
alpha3_array = zeros(360,1); % Coupler angular acceleration

% Loop through one complete revolution of the crank
for i = 1:360
    % Calculate angular displacements, velocities, and accelerations
    theta4 = 2*atan(sqrt((l+r)^2-d^2)/(d+l-r));
    omega4 = (l+r)*omega*sin(theta4)/sqrt((l+r)^2-d^2);
    alpha4 = (l+r)*omega^2*cos(theta4)/(l+r-d*cos(theta4))^2;
    theta3 = 2*atan(sqrt((d-l-r)^2-e^2)/(e-d+l+r));
    omega3 = (l+r)*omega*sin(theta4)/sqrt((l+r)^2-d^2);
    alpha3 = (l+r)*omega^2*cos(theta4)/(l+r-d*cos(theta4))^2;
    
    % Store values in arrays
    theta4_array(i) = theta4;
    omega4_array(i) = omega4;
    alpha4_array(i) = alpha4;
    theta3_array(i) = theta3;
    omega3_array(i) = omega3;
    alpha3_array(i) = alpha3;
    
    % Increment crank angle
    omega = 5; % Angular velocity of crank
end

% Plot results
t = 1:360;
figure;
subplot(3,2,1);
plot(t,theta4_array);
title('Follower Angular Displacement');
xlabel('Crank Angle (degrees)');
ylabel('Angular Displacement(radian)');

t = 1:360;
figure;
subplot(3,2,1);
plot(t,omega4_array);
title('Follower Angular Velocity');
xlabel('Crank Angle (degrees)');
ylabel('Angular Velocity(radian/sec)');
