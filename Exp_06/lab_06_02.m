t = 0:0.001:1;

% Message signal values
am = 2;
fm = 2;

% Carrier signal values
ac = 2;
fc = 20;

% Message Signal
x = am*cos(2*pi*fm*t);
subplot(4,1,1)
plot(t,x);
title('Message Signal');
xlabel('Time');
ylabel('Amplitude');
grid on;

% Carrier Signal
y = ac*cos(2*pi*fc*t);
subplot(4,1,2);
plot(t,y);
title('Carrier Signal');
xlabel('Time');
ylabel('Amplitude');
grid on;

kf = 5; % Assuming 
B = kf * am / ac;

% Frequency Modulated Signal
j = ac*cos(2*pi*fc*t + B*sin(2*pi*fm*t)); 
subplot(4,1,3);
plot(t,j);
title('Frequency Modulated Signal');
xlabel('Time');
ylabel('Amplitude');
grid on;

l = abs(j);

fs = 100*fc;
order = 2; 
cutoff_freq = fm;

%[num,den] = butter(3,0.136);
[num, den] = butter(order, [(fm-1) (fm+1)] / (fs/2), 'bandpass');
%[num, den] = butter(order, [(fm-1) (fm+1)] / (fs/2), 'bandpass');
filtered_signal = filter(num, den, l);

demodulated_signal = diff(filtered_signal);

demodulated_signal = demodulated_signal / max(abs(demodulated_signal)) * am;

t_differentiated = t(2:end); 

subplot(4,1,4);
plot(t_differentiated, demodulated_signal);
title('Demodulated Signal');
xlabel('Time');
ylabel('Amplitude');
grid on;
