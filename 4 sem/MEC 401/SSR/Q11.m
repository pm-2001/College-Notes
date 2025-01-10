% Define dimensions of 4R mechanism
crank = 2; % cm
coupler = 6.6; % cm
follower = 5.6; % cm
fixed_link = 8; % cm

% Angular velocity of crank in rad/s CCW
w_crank = 5;

% Calculate angular displacement of follower and coupler
theta_follower = acosd((fixed_link^2 + follower^2 - coupler^2 - crank^2)/(2*fixed_link*follower));
theta_coupler = acosd((coupler^2 + crank^2 - fixed_link^2 - follower^2)/(2*coupler*crank));

% Calculate angular velocity of follower and coupler
w_follower = diff(theta_follower);
w_coupler = diff(theta_coupler);

% Calculate angular acceleration of follower and coupler
a_follower = diff(w_follower);
a_coupler = diff(w_coupler);

% Plot angular displacement, velocity & acceleration of follower and coupler for one complete revolution of crank
t = linspace(0, 360/w_crank, length(theta_follower));
plot(t, theta_follower(1:end-1), t, w_follower, t(1:end-2), a_follower);
legend('Angular Displacement', 'Angular Velocity', 'Angular Acceleration');
xlabel('Time (s)');
ylabel('Angle (degrees)');