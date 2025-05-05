% Parameters
fs = 10000;                 % Sampling frequency
t = 0:1/fs:0.01;            % Time vector
fm = 50;                    % Frequency of message signal
am = 1;                     % Message amplitude

% Message signal
m = am * sin(2*pi*fm*t);

% Carrier signal for PWM
carrier = sawtooth(2*pi*1000*t, 0.5);  % Triangle wave

% PWM signal: message compared with carrier
pwm = m > carrier;

% Initialize PPM signal
ppm = zeros(size(pwm));

% Detect rising edge of PWM and insert pulse
for i = 2:length(pwm)
    if pwm(i-1) == 0 && pwm(i) == 1
        ppm(i) = 1;  % Add pulse at rising edge
    end
end

% Plotting
figure;

subplot(3,1,1);
plot(t, m);
title('Message Signal');
xlabel('Time'); ylabel('Amplitude');

subplot(3,1,2);
plot(t, pwm);
title('PWM Signal');
xlabel('Time'); ylabel('Amplitude');
ylim([-0.2 1.2]);

subplot(3,1,3);
stem(t, ppm, 'filled');
title('PPM Derived from PWM');
xlabel('Time'); ylabel('Amplitude');
ylim([-0.2 1.2]);
