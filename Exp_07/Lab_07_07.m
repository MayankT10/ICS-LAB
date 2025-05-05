% Name - Mayank Tilokchandani
% PRN - 20240802543

t = 0:1:500;
f1 = 0.01;
x = sin(2*pi*f1*t);
y = filter(h,1,x);
figure;
plot(x);
hold on;
plot(y);
zoom on;
grid on;

legend('input','output');
title('Attenuation of a Low Frequency Signal');




















% Misc. Watermark
annotation('textbox', 'String', '20240802543', 'FontSize', 30, 'Color', [0.5, 0.5, 0.5],'EdgeColor', 'none', 'HorizontalAlignment', 'center', 'Rotation', 45);
