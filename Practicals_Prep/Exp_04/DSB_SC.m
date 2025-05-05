% DSB-SC Modulation and Demodulation

t = 0:0.001:1;
a = 2;

% Message Signal
f1 = 2;
x1 = a*sin(2*pi*f1*t);
subplot(5,1,1);
plot(t,x1);
title('Message Signal');
xlabel('Time');
ylabel('Amplitude');
grid on;

% Carrier Signal
f2 = 10;
x2 = a*sin(2*pi*f2*t);
subplot(5,1,2);
plot(t,x2);
title('Carrier Signal');
xlabel('Time');
ylabel('Amplitude');
grid on;

% Modulated Signal
x3 = x1.*x2;
subplot(5,1,3);
plot(t,x3);
title('Modulated Signal');
xlabel('Time');
ylabel('Amplitude');
grid on;

% Demodulated Signal
x4 = x3./x2;
subplot(5,1,4);
plot(t,x4);
title('Demodulated Signal');
xlabel('Time');
ylabel('Amplitude');
grid on;


% Demodulated Signal using butter worth
x5 = x3.*x2;
fs = 100 * f2;
order = 2;
[num,den] = butter(order,0.9*f1/(fs/2));
de_modulated_signal = filter(num,den,x5);
subplot(5,1,5);
plot(t,de_modulated_signal);
xlabel('Time');
ylabel('Amplitude');
title('Demodulated Signal using butter worth');
grid on;


