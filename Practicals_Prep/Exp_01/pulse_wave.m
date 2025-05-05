% Pulse wave
t = 0:0.001:1;
a = 5;
f = 5;
z = a*square(2*pi*f*t);

plot(t,z);
title('Pulse wave');
xlabel('Time');
ylabel('Amplitude');
grid on; 