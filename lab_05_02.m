t = 0:0.001:1;
am = 2; % amplitude of message signal
ac = 2; % amplitude of carrier signal

% Message Signal
fm = 2; % frequency 
x = am*cos(2*pi*fm*t);
subplot(6,1,1);
plot(t,x);
xlabel('Time(s)');
ylabel('Amplitude');
title('Modulating or message signal or base band signal');
grid on;

% Carrier Signal
fc = 10;
y = ac*cos(2*pi*fc*t);
subplot(6,1,2);
plot(t,y);
xlabel('Time(s)');
ylabel('Amplitude');
title('Carrier Signal');
grid on;


s1 = (am*ac)/2*(cos(2*pi*(fc+fm)*t)+cos(2*pi*(fc-fm)*t));
subplot(6,1,3);
plot(t,s1);
xlabel('Time(s)');
ylabel('Amplitude');
title('S1');
grid on;

s2 = (am*ac)/2*(cos(2*pi*(fc+fm)*t)-cos(2*pi*(fc-fm)*t));
subplot(6,1,4);
plot(t,s2);
xlabel('Time(s)');
ylabel('Amplitude');
title('S2');
grid on;


s = s1+s2;
subplot(6,1,5);
plot(t,s);
xlabel('Time(s)');
ylabel('Amplitude');
title('Lower Sideband Signal');
grid on;

s = s1-s2;
subplot(6,1,6);
plot(t,s);
xlabel('Time(s)');
ylabel('Amplitude');
title('Upper Sideband Signal');
grid on;
















% Misc. Watermark
annotation('textbox', 'String', '20240802543', 'FontSize', 30, 'Color', [0.5, 0.5, 0.5],'EdgeColor', 'none', 'HorizontalAlignment', 'center', 'Rotation', 45);
