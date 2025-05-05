t = 0:0.001:1;
am = 2; % amplitude of message signal
ac = 2; % amplitude of carrier signal

% Cosine Message Signal
fm = 2; % frequency of message signal
x = am*cos(2*pi*fm*t);
subplot(5,2,1);
plot(t,x);
xlabel('Time(s)');
ylabel('Amplitude');
title('Cosine Modulating or message signal or base band signal');
grid on;

% Cosine Carrier Signal
fc = 10; % frequency of carrier signal
y = ac*cos(2*pi*fc*t);
subplot(5,2,2);
plot(t,y);
xlabel('Time(s)');
ylabel('Amplitude');
title('Cosine Carrier Signal');
grid on;

% Sine Message Signal
x_shifted = am*sin(2*pi*fm*t);
subplot(5,2,3);
plot(t,x_shifted);
xlabel('Time(s)');
ylabel('Amplitude');
title('Sine Modulating or message signal or base band signal');
grid on;

% Sine Carrier Signal
y_shifted = ac*sin(2*pi*fc*t);
subplot(5,2,4);
plot(t,y_shifted);
xlabel('Time(s)');
ylabel('Amplitude');
title('Sine Carrier Signal');
grid on;

% (cosine) The output of upper product modulator 
%s1 = (am*ac)/2*(cos(2*pi*(fc+fm)*t)+cos(2*pi*(fc-fm)*t));
%subplot(5,2,5);
%plot(t,s1);
%xlabel('Time(s)');
%ylabel('Amplitude');
%title('S1: Cosine Upper Product Modulator Output');
%grid on;

% (cosine) Output of lower product modulator
%s2 = (am*ac)/2*(cos(2*pi*(fc+fm)*t)-cos(2*pi*(fc-fm)*t));
%subplot(5,2,6);
%plot(t,s2);
%xlabel('Time(s)');
%ylabel('Amplitude');
%title('S2: Cosine Lower Product Modulator Output');
%grid on;

% (sine) Output of upper product modulator 
s3 = (am*ac)/2*(cos(2*pi*(fc-fm)*t)+cos(2*pi*(fc+fm)*t));
subplot(5,2,5);
plot(t,s3);
xlabel('Time(s)');
ylabel('Amplitude');
title('S1: Sine Upper Product Modulator Output');
grid on;

% (sine) Output of lower product modulator
%s4 = (am*ac)/2*(cos(2*pi*(fc-fm)*t)-cos(2*pi*(fc+fm)*t));
%subplot(5,2,6);
%plot(t,s2);
%xlabel('Time(s)');
%ylabel('Amplitude');
%title('S2: Sine Lower Product Modulator Output');
%grid on;

% SSBSC modulated wave s(t) having a lower sideband
%lsb1 = s1 + s2;
%subplot(5,2,7);
%plot(t,lsb1);
%xlabel('Time(s)');
%ylabel('Amplitude');
%title('Cosine Lower Sideband Signal');
%grid on;

% SSBSC modulated wave s(t) having an upper sideband
%usb1 = s1 - s2;
%subplot(5,2,8);
%plot(t,usb1);
%xlabel('Time(s)');
%ylabel('Amplitude');
%title('Cosine Upper Sideband Signal');
%grid on;

lsb2 = s3 + s4;
subplot(5,2,9);
plot(t,lsb2);
xlabel('Time(s)');
ylabel('Amplitude');
title('Sine Lower Sideband Signal');
grid on;

s5= (am*ac/2)*cos(2*pi*(fc-fm)*t);
%usb2 = s3 - s4;
subplot(5,2,10);
plot(t,s5);
%xlabel('Time(s)');
%ylabel('Amplitude');
%title('Sine Upper Sideband Signal');
%grid on;

% Misc. Watermark
annotation('textbox', 'String', '20240802543', 'FontSize', 30, 'Color', [0.5, 0.5, 0.5],'EdgeColor', 'none', 'HorizontalAlignment', 'center', 'Rotation', 45);
