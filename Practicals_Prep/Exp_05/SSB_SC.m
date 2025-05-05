% SSB-SC Modulation and Demodulation

%t = 0:0.001:1;
%am = 2;
%ac = 2;

% Message Signal
%fm = 2;
%x1 = am*cos(2*pi*fm*t);
%subplot(5,1,1);
%plot(t,x1);
%title('Message Signal');
%xlabel('Time');
%ylabel('Amplitude');
%grid on;

% Carrier Signal 
%fc = 2;
%x2 = ac*cos(2*pi*fc*t);
%subplot(5,1,2);
%plot(t,x2);
%title('Carrier signal');
%xlabel('Time');
%ylabel('Amplitude');
%grid on;

% Upper product Modulator
%s1 = (am*ac)/2*(cos(2*pi*(fc+fm)*t)+cos(2*pi*(fc-fm)*t));
%subplot(5,1,3);
%plot(t,s1);
%title('Upper Product Modulator');
%xlabel('Time');
%ylabel('Amplitude');
%grid on;


t = 0:0.001:1;
am = 2;
ac = 2;
fm = 5;
fc = 10;

% Message signal
x1 = am*cos(2*pi*fm*t);
subplot(7,2,1);
plot(t,x1);
title('Message Signal');
xlabel('Time');
ylabel('Amplitude');
grid on;

% Shifted message signal
x2 = am*cos((2*pi*fm*t)-pi/2);
subplot(7,2,2);
plot(t,x2);
title('Shifted Message signal');
xlabel('Time');
ylabel('Amplitude');
grid on;


% Carrier signal
x3 = ac*cos(2*pi*fc*t);
subplot(7,2,3);
plot(t,x3);
title('Carrier Signal');
xlabel('Time');
ylabel('Amplitude');
grid on;


% Shifted carrier signal
x4 = ac*cos((2*pi*fc*t)-pi/2);
subplot(7,2,4);
plot(t,x4);
title('Shifted Carrier signal');
xlabel('Time');
ylabel('Amplitude');
grid on;

% Upper Product Modulator
x5 = x1.*x3;
subplot(7,2,5);
plot(t,x5);
title('Upper Product Modulator');
xlabel('Time');
ylabel('Amplitude');
grid on;

% Lower Product Modulator
x6 = x2.*x4;
subplot(7,2,6);
plot(t,x6);
title('Lower Product Modulator');
xlabel('Time');
ylabel('Amplitude');
grid on;

% Upper and Lower Side Band
x7 = x5 + x6;
subplot(7,2,7);
plot(t,x7);
title('Upper/Lower Side Band');
xlabel('Time');
ylabel('Amplitude');
grid on;
