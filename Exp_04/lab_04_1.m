t = 0:0.1:2*pi;
sinewave = sin(t);
subplot(2,1,1);
plot(t,sinewave);
title('Sine wave');
xlabel('Time');
ylabel('Amplitude');