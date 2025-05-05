t = -2:0.01:2;             % Time vector
step = (t >= 0);           % Step at t = 0

plot(t, step, 'LineWidth', 2);
xlabel('Time (s)');
ylabel('Amplitude');
title('Unit Step Signal');
grid on;
