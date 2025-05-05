t = 0:1:500;
f1 = 0.3;
h = [1 , -0.95];
x = sin(2*pi*f1*t);
y = filter(h,1,x);
figure;
plot(x,'-b');
hold on;
plot(y,'-r');
zoom on;
grid on;
legend('input','output');









% Misc. Watermark
annotation('textbox', 'String', '20240802543', 'FontSize', 30, 'Color', [0.5, 0.5, 0.5],'EdgeColor', 'none', 'HorizontalAlignment', 'center', 'Rotation', 45);