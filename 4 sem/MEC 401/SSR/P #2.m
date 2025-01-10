R = 100; % Resistance in ohms
L = 1e-3; % Inductance in henries
C = 1e-6; % Capacitance in farads
w = logspace(0, 5, 1000); % Frequency range in rad/s

% Calculate the impedance of the circuit as a function of frequency
Z = R + 1j*(w*L - 1./(w*C));

% Plot the magnitude and phase of the impedance
figure();
subplot(2,1,1);
semilogx(w, 20*log10(abs(Z)));
xlabel('Frequency (rad/s)');
ylabel('Magnitude (dB)');
title('RLC Circuit Frequency Response');
grid on;

subplot(2,1,2);
semilogx(w, angle(Z)*180/pi);
xlabel('Frequency (rad/s)');
ylabel('Phase (degrees)');
grid on;