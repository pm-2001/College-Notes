clc;
n=3;
si=3;
sf=10;
theta2f = 130;
theta2i = 40;
c=(sf-si)/((theta2f-theta2i)^2);
theta2 = zeros(3,1);
s = zeros(3,1);
for i=1:3
    theta2(i,1) = ((theta2f+theta2i)/2 - ((theta2f-theta2i)/2)*cos((2*i-1)*pi)/6);
    s(i,1) = c*(theta2(i,1)-40)^2+10;
end
co = [s(1,1)*]