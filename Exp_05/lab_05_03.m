t = 0:0.001:1;
am = 2; % amplitude of message signal
ac = 2; % amplitude of carrier signal

% Cosine Message Signal
fm = 2; % frequency 
x = am*cos(2*pi*fm*t);
subplot(10,1,1);
plot(t,x);
xlabel('Time(s)');
ylabel('Amplitude');
title('Modulating or message signal or base band signal');
grid on;

% Cosine Carrier Signal

y = ac*cos(2*pi*fc*t);
subplot(10,2,2);
plot(t,y);
xlabel('Time(s)');
ylabel('Amplitude');
title('Carrier Signal');
grid on;


% Sine Message Signal

x_shifted = am*sin(2*pi*fm*t);
subplot(10,1,3);
plot(t,x_shifted);
xlabel('Time(s)');
ylabel('Amplitude');
title('Modulating or message signal or base band signal');
grid on;

% Sine Carrier Signal
fc = 10;
y_shifted = ac*sin(2*pi*fc*t);
subplot(10,2,4);
plot(t,y_shifted);
xlabel('Time(s)');
ylabel('Amplitude');
title('Carrier Signal');
grid on;

% The output of upper product modulator 
s1 = (am*ac)/2*(cos(2*pi*(fc+fm)*t)+cos(2*pi*(fc-fm)*t));
subplot(10,1,5);
plot(t,s1);
xlabel('Time(s)');
ylabel('Amplitude');
title('S1');
grid on;

% output of lower product modulator
s2 = (am*ac)/2*(cos(2*pi*(fc+fm)*t)-cos(2*pi*(fc-fm)*t));
subplot(10,2,6);
plot(t,s2);
xlabel('Time(s)');
ylabel('Amplitude');
title('S2');
grid on;

% SSBSC modulated wave s(t) having a lower sideband.
lsb = s1+s2;
subplot(10,1,7);
plot(t,lsb);
xlabel('Time(s)');
ylabel('Amplitude');
title('Lower Sideband Signal');
grid on;

% SSBSC modulated wave s(t) having a upper sideband.
usb = s1-s2;
subplot(10,2,8);
plot(t,usb);
xlabel('Time(s)');
ylabel('Amplitude');
title('Upper Sideband Signal');
grid on;
















% Misc. Watermark
annotation('textbox', 'String', '20240802543', 'FontSize', 30, 'Color', [0.5, 0.5, 0.5],'EdgeColor', 'none', 'HorizontalAlignment', 'center', 'Rotation', 45);
