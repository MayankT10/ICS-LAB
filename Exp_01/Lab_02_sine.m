% Name - Mayank Tilokchandani
% PRN No.- 20240802543

a = 2;
f = 1;
t = 0:0.001:1;
x = a*sin(2*pi*f*t);
plot(t,x);
xlabel('Time (sec)');
ylabel('Amplitude');
title('Sine wave');
%title('Sinusoidal Signal');








% Misc. Watermark
annotation('textbox', 'String', '20240802543', 'FontSize', 30, 'Color', [0.5, 0.5, 0.5],'EdgeColor', 'none', 'HorizontalAlignment', 'center', 'Rotation', 45);