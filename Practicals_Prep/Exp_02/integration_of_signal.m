% Integration of a signal

t = 0:0.001:1;
a = 2;
f = 5;

x = a*cos(2*pi*f*t);
subplot(2,1,1);
plot(t,x);
title('Cosine wave');
xlabel('Time');
ylabel('Amplitude');
grid on;

int_x = cumtrapz(t,x);

subplot(2,1,2);
plot(t,int_x);
title('(Sine wave) Integration of Cosine wave ');
xlabel('Time');
ylabel('Amplitude');
grid on;