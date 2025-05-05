t = 0:0.001:1;

am = 2;
fm = 5;

ac = 1;
fc = 10;


x = am*sin(2*pi*fm*t);
subplot(4,1,1);
plot(t,x);
xlabel('Time');
ylabel('Amplitude');
title('x Signal');
grid on;

y = ac*sin(2*pi*fc*t);
subplot(4,1,2);
plot(t,y);
xlabel('Time');
ylabel('Amplitude');
title('y Signal');
grid on;

cut_f = 6;
fs = 1000;
order = 1;
a = fm/(fs/2);

[num,den] = butter(order,a);


filtered_signal_x = filter(num,den,x);
subplot(4,1,3);
plot(t,filtered_signal_x);
xlabel('Time');
ylabel('Amplitude');
title('Filtered Signal of x')
grid on;



filtered_signal_y = filter (num,den,y);
subplot(4,1,4);
plot(t,filtered_signal_y);
xlabel('Time');
ylabel('Amplitude');
title('Filtered Signal of y')
grid on;
