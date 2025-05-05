% Parameters
fs = 10000;
t = 0:1/fs:0.1;
fm = 5;                  % Message frequency
am = 1;                  % Message amplitude

% Message signal
m = am*sin(2*pi*fm*t);

% PPM parameters
nPulses = 10;           % Number of time slots
samplesPerPulse = length(t)/nPulses;

ppm = zeros(size(t));

for i = 1:nPulses
    idx_start = round((i-1)*samplesPerPulse) + 1;
    idx_end = round(i*samplesPerPulse);
    
    % Extract the signal segment
    segment = m(idx_start:idx_end);
    
    % Find max position in segment (simulating time shift)
    [~, maxIdx] = max(segment);
    
    % Set a pulse at this position
    ppm(idx_start + maxIdx - 1) = 1;
end

% Plot
figure;
subplot(2,1,1);
plot(t, m); title('Message Signal'); xlabel('Time'); ylabel('Amplitude');

subplot(2,1,2);
stem(t, ppm); title('PPM Signal'); xlabel('Time'); ylabel('Amplitude');
