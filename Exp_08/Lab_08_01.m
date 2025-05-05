% Name - Mayank Tilokchandani
% PRN - 20240802543

t = 0:0.01:1;
am = 2;
fm = 2;
x = am*sin(2*pi*fm*t);
subplot(4,1,1);
plot(t,x);
xlabel('Time');
ylabel('Amplitude');
grid on;
title('Message Signal');

t1 = -5:1:5;
t2 = -10:1:10;
t3 = -15:1:15;
fs1 = 2*fm;
fs2 = 1.5*fm;
fs3 = 4*fm;

x1 = am*sin(2*pi*fm/fs1*t1);
subplot(4,1,2);
stem(t1,x1);
xlabel('Time');
ylabel('Amplitude');
grid on;
title('Uniform Sampling');


x2 = am*sin(2*pi*fm/fs2*t2);
subplot(4,1,3);
stem(t2,x2);
xlabel('Time');
ylabel('Amplitude');
grid on;
title('Under Sampling');


x3 = am*sin(2*pi*fm/fs3*t3);
subplot(4,1,4);
stem(t3,x3);
xlabel('Time');
ylabel('Ampli1tude');
grid on;
title('Over Sampling');








% Misc. Watermark
annotation('textbox', 'String', '20240802543', 'FontSize', 30, 'Color', [0.5, 0.5, 0.5],'EdgeColor', 'none', 'HorizontalAlignment', 'center', 'Rotation', 45);
