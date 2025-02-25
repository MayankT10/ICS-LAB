t = 0:0.001:1;
am = 2; % amplitude of message signal
ac = 2; % amplitude of carrier signal

% Cosine Message Signal
fm = 2; % frequency of message signal
x = am*cos(2*pi*fm*t);
subplot(5,2,1);
plot(t,x);
xlabel('Time (s)');
ylabel('Amplitude');
title('Cosine Message Signal');
grid on;

% Cosine Carrier Signal
fc = 10; % frequency of carrier signal
y = ac*cos(2*pi*fc*t);
subplot(5,2,2);
plot(t,y);
xlabel('Time (s)');
ylabel('Amplitude');
title('Cosine Carrier Signal');
grid on;

% Sine Message Signal
x_shifted = am*sin(2*pi*fm*t);
subplot(5,2,3);
plot(t,x_shifted);
xlabel('Time (s)');
ylabel('Amplitude');
title('Sine Message Signal');
grid on;

% Sine Carrier Signal
y_shifted = ac*sin(2*pi*fc*t);
subplot(5,2,4);
plot(t,y_shifted);
xlabel('Time (s)');
ylabel('Amplitude');
title('Sine Carrier Signal');
grid on;

% (sine) Output of upper product modulator 
s3 = (am*ac)/2*(cos(2*pi*(fc-fm)*t)+cos(2*pi*(fc+fm)*t));
subplot(5,2,5);
plot(t,s3);
xlabel('Time (s)');
ylabel('Amplitude');
title('S1: Sine Upper Product Modulator Output');
grid on;

% (sine) Output of lower product modulator
s4 = (am*ac)/2*(cos(2*pi*(fc-fm)*t)-cos(2*pi*(fc+fm)*t));
subplot(5,2,6);
plot(t,s4);
xlabel('Time (s)');
ylabel('Amplitude');
title('S2: Sine Lower Product Modulator Output');
grid on;

% SSBSC modulated wave s(t) having a lower sideband
lsb2 = s3 + s4;
subplot(5,2,7);
plot(t,lsb2);
xlabel('Time (s)');
ylabel('Amplitude');
title('Sine Lower Sideband Signal');
grid on;

% SSBSC modulated wave s(t) having an upper sideband
usb2 = (am*ac/2)*cos(2*pi*(fc+fm)*t);
subplot(5,2,8);
plot(t,usb2);
xlabel('Time (s)');
ylabel('Amplitude');
title('Sine Upper Sideband Signal');
grid on;

% Ensure the plots are evenly spaced and readable
sgtitle('SSB-SC Modulation Analysis');
