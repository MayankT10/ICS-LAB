% Name - Mayank Tilokchandani
% PRN - 20240802543

t = 0:0.001:1;

% message signal values
am = 2;
fm = 2;

% carrier signal values
ac = 2;
fc = 20;

% Message Signal
x = am*cos(2*pi*fm*t);
subplot(4,1,1)
plot(t,x);
title('Message Signal');
xlabel('Time');
ylabel('Amplitude');
grid on;

% Carrier Singnal
y = ac*cos(2*pi*fc*t);
subplot(4,1,2);
plot(t,y);
title('Carrier Signal');
xlabel('Time');
ylabel('Amplitude');
grid on;

kf = 5; % Assuming 
B = kf * am / ac;


% Frequency Modulated Signal
j = ac*cos(2*pi*fc*t+B*sin(2*pi*fm*t));
subplot(4,1,3);
plot(t,j);
title('Frequency Modulated Signal');
xlabel('Time');
ylabel('Amplitude');
grid on;

%h = diff(j);
%j = diff(y);

l = abs(j); 
% Demodulated signal using filter
fs = 70*fc;
order = 5;
cutoff_freq = 1.9*fm;
[num,den] = butter(order,cutoff_freq/(fs/2));
de_modulated_signal = filter(num,den,l);
subplot(4,1,4);
plot(t,de_modulated_signal);
title('Demodulated Signal');
xlabel('Time');
ylabel('Amplitude');
grid on;




% Misc. Watermark
annotation('textbox', 'String', '20240802543', 'FontSize', 30, 'Color', [0.5, 0.5, 0.5],'EdgeColor', 'none', 'HorizontalAlignment', 'center', 'Rotation', 45);