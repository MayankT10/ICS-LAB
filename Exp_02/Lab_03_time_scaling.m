% Name - Mayank Tilokchandani
% PRN No.- 20240802543

t = 0:0.01:8*pi;
x1 = sin(t);
subplot(3,1,1);
plot(t,x1);
xlabel('Time');
ylabel('Amplitude');
title('Normal/Original Signal')
grid on;

x2 = sin(t/2);
subplot(3,1,2);
plot(t,x2);
xlabel('Time');
ylabel('Amplitude');
title('Expanded Signal')
grid on;

x3 = sin(t*2);
subplot(3,1,3);
plot(t,x3);
xlabel('Time');
ylabel('Amplitude');
title('Compresssed Signal')
grid on;



% Misc. Watermark
annotation('textbox', 'String', '20240802543', 'FontSize', 30, 'Color', [0.5, 0.5, 0.5], ...
    'EdgeColor', 'none', 'HorizontalAlignment', 'center', 'Rotation', 45);


