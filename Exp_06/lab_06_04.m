t = 0:0.001:1;  % Time vector (1000 Hz sampling rate)

% Message signal parameters
am = 2;        % Message amplitude
fm = 2;        % Message frequency (Hz)

% Carrier signal parameters
ac = 2;        % Carrier amplitude
fc = 20000;    % Corrected carrier frequency (20 kHz - typical for FM)
kf = 5;        % Frequency deviation sensitivity (Hz/volt)

% Correct modulation index calculation
B = (kf*am)/fm;  % Beta = Δf/fm where Δf = kf*am

% Message signal
x = am*cos(2*pi*fm*t);
subplot(4,1,1)
plot(t,x);
title('Message Signal');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;

% Carrier signal
y = ac*cos(2*pi*fc*t);
subplot(4,1,2)
plot(t,y);
xlim([0 0.1])  % Zoom to show carrier details
title('Carrier Signal');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;

% FM modulated signal
j = ac*cos(2*pi*fc*t + B*sin(2*pi*fm*t));
subplot(4,1,3)
plot(t,j);
xlim([0 0.1])  % Zoom to show modulation
title('Frequency Modulated Signal');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;

% FM demodulation using phase differentation
analytic_signal = hilbert(j);
instantaneous_phase = unwrap(angle(analytic_signal));
demodulated_signal = diff(instantaneous_phase);
demodulated_signal = [demodulated_signal, 0];  % Align time vector
demodulated_signal = demodulated_signal/(2*pi*kf);  % Scale by kf

% Low-pass filtering
fs = 1000;  % Actual sampling frequency (1/0.001)
order = 2;  % Reduced filter order
cutoff_freq = 2*fm;  % 4 Hz cutoff
[num,den] = butter(order, cutoff_freq/(fs/2));
filtered_signal = filter(num, den, demodulated_signal);

% Demodulated signal plot
subplot(4,1,4)
plot(t, filtered_signal);
title('Demodulated Signal');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;

% Watermark annotation
annotation('textbox', 'String', '20240802543', 'FontSize', 30,...
    'Color', [0.5, 0.5, 0.5], 'EdgeColor', 'none',...
    'HorizontalAlignment', 'center', 'Rotation', 45);
