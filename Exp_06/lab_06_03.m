clc; clear; close all;

% Time vector and Sampling Frequency
t = 0:0.001:1;
fs = 1 / (t(2) - t(1)); % Sampling frequency based on time vector

% Message signal parameters
am = 2;  % Amplitude of message
fm = 2;  % Frequency of message

% Carrier signal parameters
ac = 2;  % Amplitude of carrier
fc = 20; % Frequency of carrier

% Generate Message Signal
x = am * cos(2*pi*fm*t);
subplot(4,1,1);
plot(t, x);
title('Message Signal');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;

% Generate Carrier Signal
y = ac * cos(2*pi*fc*t);
subplot(4,1,2);
plot(t, y);
title('Carrier Signal');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;

% Frequency Modulation
kf = 50; % Frequency sensitivity
int_x = cumsum(x) * (t(2) - t(1)); % Numerical integration of message signal
fm_signal = ac * cos(2*pi*fc*t + kf * int_x); % FM signal
subplot(4,1,3);
plot(t, fm_signal);
title('Frequency Modulated Signal');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;

% FM Demodulation using Hilbert Transform & Differentiation
analytic_signal = hilbert(fm_signal); % Get analytic signal
inst_phase = unwrap(angle(analytic_signal)); % Instantaneous phase
inst_freq = diff(inst_phase) * fs / (2*pi); % Instantaneous frequency
t_new = t(1:end-1); % Time vector after diff

% Low-pass filter the instantaneous frequency to retrieve the message
order = 5;
cutoff_freq = 2 * fm; % Cutoff frequency slightly above message freq
[num, den] = butter(order, cutoff_freq / (fs/2));
demod_signal = filter(num, den, inst_freq);

subplot(4,1,4);
plot(t_new, demod_signal);
title('Demodulated Signal');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;

% Watermark Annotation
annotation('textbox', [0.3, 0.5, 0.4, 0.1], 'String', '20240802543', ...
    'FontSize', 30, 'Color', [0.5, 0.5, 0.5], ...
    'EdgeColor', 'none', 'HorizontalAlignment', 'center', ...
    'Rotation', 45);
