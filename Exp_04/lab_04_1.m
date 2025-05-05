t = 0:0.1:2*pi;
sinewave = sin(t);
subplot(2,1,1);
plot(t,sinewave);
title('Sine wave');
xlabel('Time');
ylabel('Amplitude');


% Misc. Watermark
annotation('textbox', 'String', '20240802543', 'FontSize', 30, 'Color', [0.5, 0.5, 0.5],'EdgeColor', 'none', 'HorizontalAlignment', 'center', 'Rotation', 45);