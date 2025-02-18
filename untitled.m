% PRN No. - 20240802543
t = 0:0.001:1;
a = 2;

% Modulating or message signal
f1 = 2;
x = a*sin(2*pi*f1*t);
subplot(5,1,1);
plot(t,x);
xlabel('Time(s)');
ylabel('Amplitude');
title('Modulating or message signal or base band signal');
grid on;

% Carrier Signal
f2 = 10; % carrier signal frequency
y = a*sin(2*pi*f2*t);
subplot(5,1,2);
plot(t,y);
xlabel('Time(s)');
ylabel('Amplitude');
title('Carrier Signal');
grid on;

% Modulated Signal
z = x.*y;
subplot(5,1,3);
plot(t,z);
xlabel('Time(s)');
ylabel('Amplitude');
title('Modulated Signal');
grid on;

% Demodulated Signal
j = z./y;
subplot(5,1,4);
plot(t,j);
title('Demodulated Signal')
grid on;

l = abs(z);
%k = z.*y;
fs = 105 * f2;
order = 2;
fc =1.5*f1;
% f2 is cutoff frequency
%fc = f1/(fs/2);
%[numerator,denominator] = butter(order,fc);
%nf = f1/fs;
%[numerator,denominator] = butter(order,3*nf);
[num,den] = butter(order,fc/(fs/2));
de_modulated_signal = filter(num,deno,k);
subplot(5,1,5);
plot(t,de_modulated_signal);
xlabel('Time(s)');
ylabel('Amplitude');
title('Demodulated Signal using butter worth');
grid on;










% Misc. Watermark
annotation('textbox', 'String', '20240802543', 'FontSize', 30, 'Color', [0.5, 0.5, 0.5],'EdgeColor', 'none', 'HorizontalAlignment', 'center', 'Rotation', 45);
