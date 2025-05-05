t = 0:1:100;
f1 = 0.3;
x = sin(2*pi*f1*t);
y = filter(h,1,x);
figure;
plot(x,'-r');
plot(y,'-b');