% Generation of cosine wave 

t = 0:0.001:1;
a = 2;
f = 5;
y = a*cos(2*pi*f*t);

plot(t,x);
title('Cosine wave');
xlabel('Time');
ylabel('Amplitude');
grid on;