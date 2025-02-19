t = -0.1.5:0:2;

ramp = t .* (t>=0 &t<1);

step = (t>=1);

combined_signal = ramp + step;

plot(t,combined_signal);
xlabel('Time(s)');
ylabel('Amplitude');
title('Ramp to step')

grid on;
