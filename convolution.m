% Load the original audio signal
u = audioread('voice_short.wav');

% Define the impulse response for the echo effect
fs = 44100; % Sample rate of the audio signal
delay = 1; % Delay in seconds
gain = 0.5; % Gain for the echo effect
g = [zeros(1, round(delay * fs)), gain];

% Perform convolution to get the modified audio signal
y = conv(u, g);

% Trim the modified audio signal to the same length as the original signal
y = y(1:length(u));

% Extract the part of the signals between 1 second and 2 seconds
start_time = fs; % Start time at 1 second
end_time = 2 * fs; % End time at 2 seconds
u_segment = u(start_time:end_time);
y_segment = y(start_time:end_time);

% Plot the original audio signal
figure;
subplot(2, 1, 1);
time = linspace(0, length(u_segment)/fs, length(u_segment));
plot(time, u_segment, 'b');
xlabel('Time (s)');
ylabel('Amplitude');
title('Original Audio Signal');

% Plot the modified audio signal
subplot(2, 1, 2);
time = linspace(0, length(y_segment)/fs, length(y_segment));
plot(time, y_segment, 'r');
xlabel('Time (s)');
ylabel('Amplitude');
title('Modified Audio Signal');

% Save the modified audio signal to a new audio file
audiowrite('voice_short_modified.wav', y, fs);

% Print a message with the file location
fprintf('Modified audio file saved as: voice_short_modified.wav\n');

% Play the original and modified audio signals using the default media player on your system
system('start voice_short.wav'); % Play the original audio signal
pause(length(u_segment)/fs + 1); % Wait for the original signal to finish playing
system('start voice_short_modified.wav'); % Play the modified audio signal

% Evaluate the difference between the original and modified audio signals
diff = u_segment - y_segment;
mse = mean(diff.^2);
fprintf('Mean Squared Error (MSE) between original and modified audio signals: %f\n', mse);
