t = -1:0.01:2;  % Time vector
ramp = t .* (t >= 0 & t < 1);  % Ramp active only between 0 and 1

plot(t, ramp, 'LineWidth', 2);
xlabel('Time (s)');
ylabel('Amplitude');
title('Ramp Signal');
grid on;
