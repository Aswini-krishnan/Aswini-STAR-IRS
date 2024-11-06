% Initial setup
clc;
clear all;
close all;

% Data
EbN0dB =[0:5:40]

%TCJMT SISO


%MIMO 2x2 TCJMT ZF
nerr_ana=[ 0 1.8 3.5 4.9 6.5 8.2 10 11.5 13.8];

%MIMO 2x2 TCJMT ML
nerr1_ana=[ 0 1 2 3 4.3 5.5 7 8.5 10];
%



% STBC 2x2 ML TCJMT
  nerr2_ana=[ 0 0.4 0.96 1.7215 2.6529 3.7477 4.9489 6.8784 9];
   nerr3_ana=[0 0 0.4 1 1.8 2.5 3.1 4.1 4.9];

% nerr4 = [0.56567 0.40981 0.28327 0.18937 0.12438 0.08082 0.05235 0.03371 0.02148 0.01367 0.00865 0.00538 0.00335 0.00202 0.00139 0.00074];
% nerr2 = [0.20305 0.13315 0.08614 0.05576 0.03532 0.02236 0.0145 0.00914 0.00579 0.0037 0.00235 0.00146 0.00089 0.00051 0.0003 0.00018];

% Plotting data with lines and markers
figure
  plot(EbN0dB, nerr_ana,'-sk','LineWidth',2, 'HandleVisibility', 'off');
  hold on;
  % plot(EbN0dB, nerr_sim,'sk','LineWidth',2);
  hold on;
  semilogy(EbN0dB, nerr1_ana,'-.sk','LineWidth',2, 'HandleVisibility', 'off');
   hold on;
% semilogy(EbN0dB, nerr1_sim,'sr','LineWidth',2);
   hold on;
    semilogy(EbN0dB,nerr2_ana ,'-ob','LineWidth',2, 'HandleVisibility', 'off');
    hold on;
     % semilogy(EbN0dB,nerr2_sim ,'ok','LineWidth',2);
    hold on;
semilogy(EbN0dB, nerr3_ana,'-.ob','LineWidth',2, 'HandleVisibility', 'off');
  hold on;
% figure;
% semilogy(EbN0dB, nerr1, '-ks', 'LineWidth', 2, 'HandleVisibility', 'off'); % Line with circle marker, no legend
% hold on;
% semilogy(EbN0dB, nerr5, '-.ko', 'LineWidth', 2, 'HandleVisibility', 'off'); % Line with square marker, no legend
% semilogy(EbN0dB, nerr3, '-.ko', 'LineWidth', 2, 'HandleVisibility', 'off'); % Line with circle marker, no legend
% semilogy(EbN0dB, nerr, '-ko', 'LineWidth', 2, 'HandleVisibility', 'off'); % Line with circle marker, no legend
% semilogy(EbN0dB, nerr4, '-.rs', 'LineWidth', 2, 'HandleVisibility', 'off'); % Line with square marker, no legend
% semilogy(EbN0dB, nerr2, '-rs', 'LineWidth', 2, 'HandleVisibility', 'off'); % Line with square marker, no legend

% Adding invisible plots to the legend to show only markers

semilogy(nan, nan, 'ks', 'MarkerSize', 7, 'MarkerFaceColor', 'none', 'LineWidth', 2, 'DisplayName', '(0.8,0.2)'); % Square marker, no fill
semilogy(nan, nan, 'bo', 'MarkerSize', 7, 'MarkerFaceColor', 'none', 'LineWidth', 2, 'DisplayName', '(0.6,0.4)'); % Circle marker, no fill
% Add the legend
kk = legend();
set(kk, 'Interpreter', 'Latex');

% Axis labels and formatting
xlabel('$$\mathrm{Transmit~Power~(dB)}$$', 'FontName', 'Times New Roman', 'FontSize', 12, 'Interpreter', 'latex');
ylabel('$$\mathrm{Sum~Rate}$$', 'FontName', 'Times New Roman', 'FontSize', 12, 'Interpreter', 'latex');
set(gca, 'FontSize', 12, 'XGrid', 'on', 'YGrid', 'on', 'GridLineStyle', ':', 'MinorGridLineStyle', 'none', 'FontName', 'Times New Roman');

% Hold off
hold off;
