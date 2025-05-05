% Name - Mayank Tilokchandani
% PRN No.- 20240802543

f = 1;
a = 1;
t = 0:0.001:1;

w = 2*pi*f;
x1 = a*sin(w*t);

subplot(3,1,1);
plot(t,x1);
xlabel('Time')
ylabel('Amplitude') 
title('Sine Wave')
grid on;


f = 1;
a = 1;
t = 0:0.01:0.1;
x2 = a*cos(2*pi*f*t);
subplot(3,1,2);
plot(t,x2);
xlabel('Time');
ylabel('Amplitude');
title('Carrier signal');
grid on;

y = conv(x1,x2);
subplot(3,1,3);
plot(y);
xlabel('Time');
ylabel('Amplitude');
title('Convolution of Message and Carrier signal');
grid on;



% Misc. Watermark
annotation('textbox', 'String', '20240802543', 'FontSize', 30, 'Color', [0.5, 0.5, 0.5],'EdgeColor', 'none', 'HorizontalAlignment', 'center', 'Rotation', 45);