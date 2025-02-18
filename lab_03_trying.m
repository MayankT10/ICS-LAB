f1 = 1;
a1 = 1;
t1 = 0:0.001:1;

w1 = 2*pi*f1;
x1 = a1*sin(w1*t1);

subplot(3,1,1); 
plot(x1);
xlabel('Time (s)');
ylabel('Amplitude');
title('Sine Wave');
grid on;

y=zeros(1,10)
subplot(3,1,2);  
plot(t2,x2);
xlabel('Time (s)');
ylabel('Amplitude');
title('');
grid on;

y = conv(x1,x2);

subplot(3,1,3);  
plot(y);
xlabel('Time (s)');
ylabel('Amplitude');
title('Convolution Result');
grid on;
