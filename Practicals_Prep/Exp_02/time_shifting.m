% Time Shifting
 
t = 0:5;

x = [0 1 2 0 1 2];
subplot(3,1,1);
stem(t,x,'filled');
title('Original Signal');
xlabel('Time');
ylabel('Amplitude');
grid on;
axis([-2 8 0 4]);


subplot(3,1,2);
stem(t+2,x,'filled');
title('Time Delay');
xlabel('Time');
ylabel('Amplitude');
grid on;
axis([-2 8 0 4]);

subplot(3,1,3);
stem(t-2,x,'filled');
title('Time Advance');
xlabel('Time');
ylabel('Amplitude');
grid on;
axis([-2 8 0 4]);