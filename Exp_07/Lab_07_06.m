% y[n] = x[n] - 0.95*x[n-1];
h = [1 -0.95];
freqz(h);
zoom on;
grid on;
title('Frequency Response');