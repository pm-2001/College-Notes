theta2i = 30*pi/180; theta2f = 120*pi/180;
theta4i = 60*pi/180; theta4f = 150*pi/180;

n = 3;
x0 = 1; y0 = x0.^(1.6);
x4 = 4; y4 = x4.^(1.6);

x1 = ((x4+x0)/2) - ((x4-x0)/2)*cos(((2*1-1)*pi)/(2*n));
x2 = ((x4+x0)/2) - ((x4-x0)/2)*cos(((2*2-1)*pi)/(2*n));
x3 = ((x4+x0)/2) - ((x4-x0)/2)*cos(((2*3-1)*pi)/(2*n));

y1 = x1.^(1.6);
y2 = x2.^(1.6);
y3 = x3.^(1.6);

mx = (theta2f - theta2i)*(180/pi) / (x4 - x0);
my = (theta4f - theta4i)*(180/pi) / (y4 - y0);

theta2_1 = mx*(x1 - x0) + theta2i*(180/pi);
theta2_2 = mx*(x2 - x0) + theta2i*(180/pi);
theta2_3 = mx*(x3 - x0) + theta2i*(180/pi);

theta4_1 = my*(y1 - y0) + theta4i*(180/pi);
theta4_2 = my*(y2 - y0) + theta4i*(180/pi);
theta4_3 = my*(y3 - y0) + theta4i*(180/pi);

A = [cos(theta4_1*(pi/180)) -cos(theta2_1*(pi/180)) 1;
     cos(theta4_2*(pi/180)) -cos(theta2_2*(pi/180)) 1;
     cos(theta4_3*(pi/180)) -cos(theta2_3*(pi/180)) 1];
C = [cos(theta2_1*(pi/180) - theta4_1*(pi/180));
     cos(theta2_2*(pi/180) - theta4_2*(pi/180));
     cos(theta2_3*(pi/180) - theta4_3*(pi/180))];
B = (linsolve(A, C));

k1 = B(1,1)
k2 = B(2,1)
k3 = B(3,1)
k4 = 1/abs(sqrt(1 + 1/(k1*k1) + 1/(k2*k2) -2*k3/(k1*k2)));

% by comparing k1, k2, k3, k4 for r1, r2, r3, r4, we get