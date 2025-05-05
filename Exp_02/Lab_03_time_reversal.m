% Name - Mayank Tilokchandani
% PRN No.- 20240802543
% Time Reversal


t = 0:10;
x = [0 1 2 3 4 -5 -6 -7 -8 -9 -10];
subplot(2,1,1);
stem(t,x);
xlabel('Time');
ylabel('Amplitude');
title('Original Signal');
grid on;


y = fliplr(x);
subplot(2,1,2);
stem(t,y);
xlabel('Time');
ylabel('Amplitude');
title('Flipped Signal');
grid on;








% Misc. Watermark
annotation('textbox', 'String', '20240802543', 'FontSize', 30, 'Color', [0.5, 0.5, 0.5], ...
    'EdgeColor', 'none', 'HorizontalAlignment', 'center', 'Rotation', 45);