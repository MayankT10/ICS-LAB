% Time Reversal

t = 0:5;

x = [0 1 5 -3 3 -2];
subplot(2,1,1);
plot(t,x);
stem(t,x,'filled');
title('Original Signal');
xlabel('Time');
ylabel('Amplitude');
grid on;

y = fliplr(x);
subplot(2,1,2);
stem(t,y,'filled');
title('Reversed Signal');
xlabel('Time');
ylabel('Amplitude');
grid on;