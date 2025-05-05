% Name - Mayank Tilokchandani
% PRN No.- 20240802543

% Multiplication of signals
t = 0:0.001:1;
f = 2;
x1 = sin(2*pi*f*t);
subplot(3,1,1);
plot(t,x1);
title('Signal x1');
grid on;

x2 = cos(2*pi*f*t);
subplot(3,1,2);
plot(t,x2);
title('Signal x2');
grid on;

x3 = x1.*x2;
subplot(3,1,3);
plot(t,x3);
title('Multiplication of x1 and x2');
grid on;






% Misc. Watermark
annotation('textbox', 'String', '20240802543', 'FontSize', 30, 'Color', [0.5, 0.5, 0.5], ...
    'EdgeColor', 'none', 'HorizontalAlignment', 'center', 'Rotation', 45);