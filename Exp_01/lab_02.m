F = 1;
A = 1;
time = 0:0.001:1;

w = 2*pi*F;
x = A*sin(w*time);
% we add pi to change the phase shift of sine wave to 180 degree 

plot(time,x);

xlabel('Time(seconds)')
ylabel('Amplitude')
title('Sinusoidal wave')

% phase shift = 0 degree for sine wave 
% phase shift = 90 degree for cose wave