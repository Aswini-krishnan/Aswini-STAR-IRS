% MATLAB Code for Outage Probability vs. SNR Plot
clear;
clc;

% Parameters
SNR_dB = 0:2:30;               % SNR range in dB
SNR = 10.^(SNR_dB/10);         % Convert SNR from dB to linear scale
outage_threshold = 1;          % Outage threshold (change as per your model)
num_iterations = 1e5;          % Number of iterations for simulation

% Parameters for different cases
alpha_values = [0.6, 0.8];     % Values for parameter alpha
beta_values = [0.4, 0.2];      % Values for parameter beta

% Initialize results
outage_analytical = zeros(length(alpha_values), length(SNR));
outage_simulation = zeros(length(alpha_values), length(SNR));

% Loop through different alpha and beta values
for i = 1:length(alpha_values)
    alpha = alpha_values(i);
    beta = beta_values(i);

    % Analytical Outage Probability Calculation (example formula)
    for j = 1:length(SNR)
        % Replace the following with your analytical formula
        outage_analytical(i, j) = exp(-beta * SNR(j) / (alpha * outage_threshold));
    end

    % Simulation for Outage Probability
    for j = 1:length(SNR)
        snr_linear = SNR(j);
        outage_count = 0;

        for k = 1:num_iterations
            % Generate random channel gain (Rayleigh fading example)
            h = sqrt(0.5) * (randn + 1i * randn);
            received_snr = abs(h)^2 * snr_linear;

            % Check if the received SNR is below the threshold
            if received_snr < outage_threshold
                outage_count = outage_count + 1;
            end
        end
        outage_simulation(i, j) = outage_count / num_iterations;
    end
end

% Plotting
figure;
hold on;
markers = {'o', 's'};       % Markers for different curves
colors = {'k', 'r'};        % Colors for different curves

for i = 1:length(alpha_values)
    % Plot Analytical Results
    semilogy(SNR_dB, outage_analytical(i, :), '-', 'Color', colors{i}, ...
        'Marker', markers{i}, 'DisplayName', sprintf('(%.1f, %.1f)', alpha_values(i), beta_values(i)));

    % Plot Simulation Results
   % semilogy(SNR_dB, outage_simulation(i, :), '--', 'Color', colors{i}, ...
      %  'Marker', markers{i}, 'DisplayName', sprintf('Simulation (%.1f, %.1f)', alpha_values(i), beta_values(i)));
end

% Plot Formatting
xlabel('SNR (dB)');
xlim([0, 30]); 
ylabel('Outage Probability');
set(gca, 'YScale', 'log');   % Logarithmic scale for Y-axis
ylim([1e-4, 1]); 
%xlim([30, 0]); 
legend('show');
grid on;
title('Outage Probability vs. SNR');
hold off;
