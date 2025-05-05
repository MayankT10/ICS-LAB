% Name - Mayank Tilokchandani
% PRN - 20240802543

am = 5;
ac = 5;
fm = 2;
fc = 15;

t = 0:0.001:1;

% Message Signal
m = am*sin(2*pi*fm*t);
subplot(4,1,1);
plot(t,m);
title('Baseband Signal');
xlabel('Time');
ylabel('Amplitdue');

% Carrier Signal
c = ac*sin(2*pi*fc*t);
subplot(4,1,2);
plot(t,c);
title('Carrier Signal');
xlabel('Time');
ylabel('Amplitude');

kf = 5;
beta = (kf*am)/fm;

s = am*cos(2*pi*fc*t - beta*cos(2*pi*fm*t));

subplot(4,1,3);
plot(t,s);
title('Modulated Signal');
xlabel('Time');
ylabel('Amplitude');

k = diff(s);
d1 = abs(k);
[b,a] = butter(3,0.01);
d = filter(b,a,d1);

subplot(4,1,4);
plot(d);
title('Demodulated Signal');
xlabel('Time');
ylabel('Amplitude');













% Misc. Watermark
annotation('textbox', 'String', '20240802543', 'FontSize', 30, 'Color', [0.5, 0.5, 0.5],'EdgeColor', 'none', 'HorizontalAlignment', 'center', 'Rotation', 45);