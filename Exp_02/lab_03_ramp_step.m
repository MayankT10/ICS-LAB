t = -1;
ramp = t .* (t >= 0 & t < 1);
step = (t >= 1);
combined_signal = ramp + step;

plot(t, combined_signal);
xlabel('Time(s)');
ylabel('Amplitude');
title('Ramp to Step');
grid on;




% Misc. Watermark
annotation('textbox', [0.3, 0.3, 0.4, 0.2], 'String', '20240802543', ...
    'FontSize', 30, 'Color', [0.5, 0.5, 0.5], ...
    'EdgeColor', 'none', 'HorizontalAlignment', 'center', 'Rotation', 45);
