t = 0:5;
x = [1 3 -5 -2 0];
subplot(3,1,1)
stem(t,x)
grid on;

y = fliplr(x);
subplot(3,1,3);
stem(t,y)
grid on;