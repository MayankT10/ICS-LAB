% Parameters
fs = 10000;             % Sampling frequency
t = 0:0.0001:0.01;        % Time vector
fm = 50;                % Frequency of message signal
am = 1;                 % Amplitude of message signal

% Message signal (e.g., sinusoid)
m = am*sin(2*pi*fm*t);

% Carrier signal (sawtooth for PWM comparison)
carrier = sawtooth(2*pi*1000*t, 0.5);  % Triangle wave

% PWM signal: message compared with carrier
pwm = m > carrier;

% Plot
figure;
subplot(3,1,1);
plot(t, m); title('Message Signal'); ylabel('Amplitude'); xlabel('Time');

subplot(3,1,2);
plot(t, carrier); title('Carrier Signal (Triangle)'); ylabel('Amplitude'); xlabel('Time');

subplot(3,1,3);
plot(t, pwm); title('PWM Signal'); ylabel('Amplitude'); xlabel('Time');
