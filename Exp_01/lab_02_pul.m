% Name - Mayank Tilokchandani
% PRN No.- 20240802543

f = 1;
a = 1;
t = 0:0.001:1;

x = a * square(2*pi*f*t,10);

plot(t, x);
xlabel('Time (s)')
ylabel('Amplitude') 
title('Square Wave')
axis([0 1 -1.5 1.5])   





% Misc. Watermark
annotation('textbox', 'String', '20240802543', 'FontSize', 30, 'Color', [0.5, 0.5, 0.5],'EdgeColor', 'none', 'HorizontalAlignment', 'center', 'Rotation', 45);