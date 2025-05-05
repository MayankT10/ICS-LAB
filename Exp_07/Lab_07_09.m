% Name - Mayank Tilokchandani
% PRN - 20240802543

t = 0:1:100;
f1 = 0.3;
x = sin(2*pi*f1*t);

h = [1 -0.95];           
y = filter(h, 1, x);    

figure;
plot(x, '-r');           
hold on;
plot(y, '-b');           
grid on;
legend('Input x[n]', 'Filtered y[n]');
xlabel('Sample Index n');
ylabel('Amplitude');
title('Enhancement of a High Frequency Signal');
















% Misc. Watermark
annotation('textbox', 'String', '20240802543', 'FontSize', 30, 'Color', [0.5, 0.5, 0.5],'EdgeColor', 'none', 'HorizontalAlignment', 'center', 'Rotation', 45);
