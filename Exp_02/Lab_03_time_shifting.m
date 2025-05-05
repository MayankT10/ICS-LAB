% Name - Mayank Tilokchandani
% PRN No.- 20240802543
% Time Shifting

t = 0:10;
x = [0 1 2 1 0 1 2 0 1 2 1];
subplot(3,1,1);
plot(t,x);
xlabel('Time');
ylabel('Amplitude');
grid on;
axis([-2 8 0 4]);
title('Signal with time t');

subplot(3,1,2);
plot(t+2,x);
axis([-2 8 0 4]);
xlabel('Time');
ylabel('Amplitude');
grid on;
title('Delayed Signal');


subplot(3,1,3);
plot(t-2,x);
axis([-2 8 0 4]);
xlabel('Time');
ylabel('Amplitude');
grid on;
title('Advanced Signal');




% Misc. Watermark
annotation('textbox', 'String', '20240802543', 'FontSize', 30, 'Color', [0.5, 0.5, 0.5], ...
    'EdgeColor', 'none', 'HorizontalAlignment', 'center', 'Rotation', 45);