% Generation of Sine wave

t = 0:0.001:1;
a = 5;
f = 2;
x = a*sin(2*pi*f*t);

plot(t,x);
title('Sine wave');
xlabel('Time');
ylabel('Amplitdue');