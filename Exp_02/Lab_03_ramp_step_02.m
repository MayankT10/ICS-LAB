% Time vector
t = -2:0.01:3;

% Ramp signal from t = 0 to t = 1
ramp = t .* (t >= 0 & t < 1);

% Step signal starting from t = 1
step = (t >= 1);

% Add the ramp and step
combined_signal = ramp + step;

% Plot the signals
plot(t, ramp, '--b', 'LineWidth', 2); hold on;
plot(t, step, '--r', 'LineWidth', 2);
plot(t, combined_signal, 'k', 'LineWidth', 2);
legend('Ramp', 'Step', 'Combined');
xlabel('Time (s)');
ylabel('Amplitude');
title('Ramp + Step Signal');
grid on;
