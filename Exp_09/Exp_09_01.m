% Name - Mayank Tilokchandani
% PRN - 20240802543

am = 5;
fm = 10;
t = 0:0.001:1;
x1 = 1;
subplot(3,1,1);
stem(x1);
xlabel('Time');
ylabel('Amplitude');
title('Impulse Signal');


x2 = am*sin(2*pi*fm*t);
subplot(3,1,2);
plot(t,x2);
ylim([-am-0.2 am+0.2]);
xlabel('Time');
ylabel('Amplitude');
title('Sinusoidal Signal');


y = x1.*x2;
subplot(3,1,3);
stem(y);
xlabel('Time');
ylabel('Amplitude');
ylim([-am-0.2 am+0.2]);
title('PAM Waveform');





% Misc. Watermark
annotation('textbox', 'String', '20240802543', 'FontSize', 30, 'Color', [0.5, 0.5, 0.5],'EdgeColor', 'none', 'HorizontalAlignment', 'center', 'Rotation', 45);