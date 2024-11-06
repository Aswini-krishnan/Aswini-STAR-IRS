% Initial setup
clc;
clear all;
close all;

% Data
EbN0dB = 0:2:30;
nerr1 = [1 1 0.99992 0.99807 0.98145 0.91712 0.7922 0.62911 0.46536 0.32673 0.2206 0.14472 0.09396 0.06104 0.039 0.02494];
nerr5 = [0.99564 0.96754 0.88421 0.74441 0.57592 0.41851 0.29074 0.19607 0.12871 0.08297 0.05306 0.03308 0.02147 0.0138 0.00902 0.00566];
nerr3 = [0.9733 0.89489 0.75862 0.59346 0.43318 0.30202 0.20162 0.13326 0.08577 0.05471 0.03494 0.02204 0.01372 0.00834 0.00544 0.00348];
nerr = [0.7876 0.62384 0.46115 0.32209 0.21714 0.14367 0.09405 0.05995 0.03889 0.02446 0.01564 0.01033 0.00632 0.00399 0.00253 0.00152];
nerr4 = [0.56567 0.40981 0.28327 0.18937 0.12438 0.08082 0.05235 0.03371 0.02148 0.01367 0.00865 0.00538 0.00335 0.00202 0.00139 0.00074];
nerr2 = [0.20305 0.13315 0.08614 0.05576 0.03532 0.02236 0.0145 0.00914 0.00579 0.0037 0.00235 0.00146 0.00089 0.00051 0.0003 0.00018];

% Plotting data with lines and markers
figure;
semilogy(EbN0dB, nerr1, '-ko', 'LineWidth', 2, 'HandleVisibility', 'off'); % Line with circle marker, no legend
hold on;
semilogy(EbN0dB, nerr5, '-rs', 'LineWidth', 2, 'HandleVisibility', 'off'); % Line with square marker, no legend
semilogy(EbN0dB, nerr3, '-.ko', 'LineWidth', 2, 'HandleVisibility', 'off'); % Line with circle marker, no legend
semilogy(EbN0dB, nerr, '-ko', 'LineWidth', 2, 'HandleVisibility', 'off'); % Line with circle marker, no legend
semilogy(EbN0dB, nerr4, '-.rs', 'LineWidth', 2, 'HandleVisibility', 'off'); % Line with square marker, no legend
semilogy(EbN0dB, nerr2, '-rs', 'LineWidth', 2, 'HandleVisibility', 'off'); % Line with square marker, no legend

% Adding invisible plots to the legend to show only markers
semilogy(nan, nan, 'ko', 'MarkerSize', 7, 'MarkerFaceColor', 'none', 'LineWidth', 2, 'DisplayName', '(0.6, 0.4)'); % Circle marker, no fill
semilogy(nan, nan, 'rs', 'MarkerSize', 7, 'MarkerFaceColor', 'none', 'LineWidth', 2, 'DisplayName', '(0.8, 0.2)'); % Square marker, no fill

% Add the legend
kk = legend();
set(kk, 'Interpreter', 'Latex');

% Axis labels and formatting
xlabel('$$\mathrm{SNR~(dB)}$$', 'FontName', 'Times New Roman', 'FontSize', 12, 'Interpreter', 'latex');
ylabel('$$\mathrm{Outage~Probability}$$', 'FontName', 'Times New Roman', 'FontSize', 12, 'Interpreter', 'latex');
set(gca, 'FontSize', 12, 'XGrid', 'on', 'YGrid', 'on', 'GridLineStyle', ':', 'MinorGridLineStyle', 'none', 'FontName', 'Times New Roman');

% Hold off
hold off;
