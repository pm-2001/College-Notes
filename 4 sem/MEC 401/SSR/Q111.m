r1 = 0.08;
r2 = 0.02;
r3 = 0.066;
r4 = 0.056;
w2 =5;
theta1 = 0;
tfinal = 2.*pi./w2;
t = linspace(0,tfinal,100);
theta2 = 5*t;
A1 = 2.*r1.*r4.*cos(theta1)-2.*r2.*r4.*cos(theta2);
B1 = 2.*r1.*r4.*sin(theta1)- 2.*r2.*r4.*sin(theta2);
C1 = r1.^2 + r2.^2 +r4.^2 - r3.^2 - 2.*r1.*r2.*cos(theta1-theta2);
A = C1-A1;
B= 2.*B1;
C= C1+A1;

theta4 = 2.*atan((-B+(sqrt(B.^2-4.*A.*C)))./(2.*A));
theta3 = atan((r1.*sin(theta1)+r4.*sin(theta4)-r2.*sin(theta2))./(r1.*cos(theta1)+r4.*cos(theta4)-r2.*cos(theta2)));

w3 = (r2.*sin(theta2-theta3).*w2)./(r3.*sin(theta4-theta3));
w4 = (r2.*sin(theta2-theta4).*w2)./(r4.*sin(theta4-theta3));

%{
MW1 = [-r3.*sin(theta3) r4.*sin(theta4); -r3.*cos(theta3) r4.*cos(theta4)];
MW2 = [r2.*w2.*sin(theta2); r2.*w2.*cos(theta2)];
[w3, w4] = linsolve(MW1,MW2);
%}
MA1 = [-r3.*sin(theta3) r4.*sin(theta4); -r3.*cos(theta3) r4.*cos(theta4)];

MA2 = [r2.*w2.^2.*cos(theta2) + r3.*w3.^2.*cos(theta3)-r4.*w4.^2.*cos(theta4); -r2.*w2.^2.*sin(theta2) - r3.*w3.^2.*sin(theta3) + r4.*w4.^2.*sin(theta4)];
[a3,a4] = linsolve(MA1,MA2);

subplot(6,1,1)
plot(t,theta3)
xlabel('Time')
ylabel('Angular displacement of coupler')
subplot(6,1,2)
plot(t,theta4)
xlabel('Time')
ylabel('Angular displacement of follower')
subplot(6,1,3)
plot(t,w3)
xlabel('Time')
ylabel('Angular velocity of coupler')
subplot(6,1,4)
plot(t,w4)
xlabel('Time')
ylabel('Angular velocity of follower')
subplot(6,1,5)
plot(t,a3)
xlabel('Time')
ylabel('Angular acceleration of coupler')
subplot(6,1,6)
plot(t,a4)
xlabel('Time')
ylabel('Angular acceleration of follower')