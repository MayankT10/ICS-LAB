% Main script to define the signals and call the function
t = 0:0.1:1;                % Time vector
u1 = sin(2*pi*t);           % Example signal 1 (sine wave)

% Create a pulse generator u2
pulseWidth = 0.2;           % Pulse width (duration of the pulse)
u2 = rectpuls(t - 0.5, pulseWidth);  % Pulse centered at 0.5, with width of 0.2

% Call the function with the signals and time vector
[y1, y2, y3, y4, y5] = fcn(u1, u2, t);

% Plot the results
figure;

subplot(3,2,1); plot(t, y1); title('Convolution of u1 and u2');
subplot(3,2,2); plot(t, y2); title('Sum of u1 and u2');
subplot(3,2,3); plot(t, y3); title('Difference of u1 and u2');
subplot(3,2,4); plot(t, y4); title('Element-wise multiplication of u1 and u2');
subplot(3,2,5); plot(t, y5); title('Derivative of u1');

% Function definition
function [y1, y2, y3, y4, y5] = fcn(u1, u2, t)
    % Convolution of u1 and u2 (using 'same' to keep the output length consistent)
    y1 = conv(u1, u2, 'same');  
    
    % Sum of u1 and u2
    y2 = (u1 + u2);

    % Difference of u1 and u2
    y3 = (u1 - u2);

    % Element-wise multiplication of u1 and u2
    y4 = (u1 .* u2);

    % Numerical differentiation of u1 using gradient with respect to time t
    y5 = gradient(u1, t);  
end
