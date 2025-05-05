% Name - Mayank Tilokchandani
% PRN No.- 20240802543

f1 = 1;
a1 = 1;
t1 = 0:0.001:1;

w1 = 2*pi*f1;
x1 = a1*sin(w1*t1);

subplot(3,1,1);  % First subplot for sine wave
plot(t1,x1);
xlabel('Time (s)');
ylabel('Amplitude');
title('Sine Wave');
grid on;

f2 = 1;
a2 = 1;
t2 = 0:0.01:0.1;
x2 = a2*cos(2*pi*f2*t2);

subplot(3,1,2);  
plot(t2,x2);
xlabel('Time (s)');
ylabel('Amplitude');
title('Carrier Signal');
grid on;

y = conv(x1,x2);
t_conv = 0:0.001:(length(y)-1)*0.001; 

subplot(3,1,3);  
plot(t_conv, y);
xlabel('Time (s)');
ylabel('Amplitude');
title('Convolution Result');
grid on;


% Misc. Watermark
%annotation('textbox', 'String', '20240802543', 'FontSize', 30, 'Color', [0.5, 0.5, 0.5],'EdgeColor', 'none', 'HorizontalAlignment', 'center', 'Rotation', 45);