% Initial setup
clc;
clear all;
close all;

% Data
EbN0dB =[0:5:50];

%TCJMT SISO
%RSMA ICN
nerr=[   0.0087   0.0155    0.0277    0.0496     0.0885    0.1572    0.2703    0.4425    0.6622    0.8659    0.9750     ]
%MIMO 2x2 TCJMT ZF
nerr1=[  0.0001   0.0004    0.0010    0.0027    0.0075    0.0195    0.0491    0.1161    0.2508    0.4750    0.7455    ];

%MIMO 2x2 TCJMT ML
nerr2=[0.0000   0.0001    0.0002    0.0005   0.0012      0.0033    0.0091    0.0238    0.0594    0.1386    0.2932    ];


%TCJMT SISO
%NOMA ICN
nerr3=[  0.9750    0.8659    0.6622    0.4425    0.2703    0.1572    0.0885    0.0496    0.0277    0.0155    0.0087 ]
%MIMO 2x2 TCJMT ZF
nerr4=[   0.0003   0.0010    0.0026    0.0073    0.0192   0.0487      0.1148    0.2497    0.4741    0.7455    0.9382    ];

%MIMO 2x2 TCJMT ML
nerr5=[0.5339    0.2926    0.1383    0.0597    0.0241    0.0093    0.0034    0.0013    0.0005    0.0002    0.0001];



% STBC 2x2 ML TCJMT
  % nerr2_ana=[ 0 0.4 0.96 1.7215 2.6529 3.7477 4.9489 6.8784 9];
  %  nerr3_ana=[0 0 0.4 1 1.8 2.5 3.1 4.1 4.9];

% nerr4 = [0.56567 0.40981 0.28327 0.18937 0.12438 0.08082 0.05235 0.03371 0.02148 0.01367 0.00865 0.00538 0.00335 0.00202 0.00139 0.00074];
% nerr2 = [0.20305 0.13315 0.08614 0.05576 0.03532 0.02236 0.0145 0.00914 0.00579 0.0037 0.00235 0.00146 0.00089 0.00051 0.0003 0.00018];

% Plotting data with lines and markers
figure
  semilogy(EbN0dB, nerr,'-.ko','LineWidth',2, 'HandleVisibility', 'off');
  hold on;
  semilogy(EbN0dB, nerr4,'-ro','LineWidth',2, 'HandleVisibility', 'off');
  hold on;
  semilogy(EbN0dB, nerr1,'-.ks','LineWidth',2, 'HandleVisibility', 'off');
  hold on;
   semilogy(EbN0dB,nerr2 ,'-rs','LineWidth',2, 'HandleVisibility', 'off');


%    hold on;
% figure
%   plot(EbN0dB, nerr_ana,'-dr','LineWidth',2, 'HandleVisibility', 'off');
%   hold on;
%   % plot(EbN0dB, nerr_sim,'*g','LineWidth',2);
%   hold on;
%   % plot(EbN0dB, nerr_sim,'>g','LineWidth',2);
%   % hold on;
%   semilogy(EbN0dB, nerr1_ana,'-.dr','LineWidth',2, 'HandleVisibility', 'off');
%   hold on;
% % semilogy(EbN0dB, nerr1_sim,'<b','LineWidth',2);
% %   hold on;
%     semilogy(EbN0dB,nerr2_ana ,'-+k','LineWidth',2, 'HandleVisibility', 'off');
%    hold on;
%     % semilogy(EbN0dB,nerr2_sim ,'or','LineWidth',2);
%     % hold on;
% semilogy(EbN0dB, nerr3_ana,'-.+k','LineWidth',2, 'HandleVisibility', 'off');
 % hold on;
 % semilogy(EbN0dB, nerr3_sim,'sk','LineWidth',2);

% figure
%  plot(EbN0dB, nerr_ana1,'sk','LineWidth',2, 'HandleVisibility', 'off');
%   hold on;
%   plot(EbN0dB, nerr_ana2,'ob','LineWidth',2, 'HandleVisibility', 'off');
%   hold on;
% figure
%   plot(EbN0dB, nerr_ana,'sk','LineWidth',2, 'HandleVisibility', 'off');
%   hold on;
%   % plot(EbN0dB, nerr_sim,'sk','LineWidth',2);
%   hold on;
%   semilogy(EbN0dB, nerr1_ana,'oa','LineWidth',2, 'HandleVisibility', 'off');
%    hold on;
% % semilogy(EbN0dB, nerr1_sim,'sr','LineWidth',2);
%    hold on;
%     semilogy(EbN0dB,nerr2_ana ,'-ob','LineWidth',2, 'HandleVisibility', 'off');
%     hold on;
%      % semilogy(EbN0dB,nerr2_sim ,'ok','LineWidth',2);
%     hold on;
% semilogy(EbN0dB, nerr3_ana,'-.ob','LineWidth',2, 'HandleVisibility', 'off');
%   hold on;
% figure;
% semilogy(EbN0dB, nerr1, '-ks', 'LineWidth', 2, 'HandleVisibility', 'off'); % Line with circle marker, no legend
% hold on;
% semilogy(EbN0dB, nerr5, '-.ko', 'LineWidth', 2, 'HandleVisibility', 'off'); % Line with square marker, no legend
% semilogy(EbN0dB, nerr3, '-.ko', 'LineWidth', 2, 'HandleVisibility', 'off'); % Line with circle marker, no legend
% semilogy(EbN0dB, nerr, '-ko', 'LineWidth', 2, 'HandleVisibility', 'off'); % Line with circle marker, no legend
% semilogy(EbN0dB, nerr4, '-.rs', 'LineWidth', 2, 'HandleVisibility', 'off'); % Line with square marker, no legend
% semilogy(EbN0dB, nerr2, '-rs', 'LineWidth', 2, 'HandleVisibility', 'off'); % Line with square marker, no legend

% Adding invisible plots to the legend to show only markers

semilogy(nan, nan, 'rs', 'MarkerSize', 7, 'MarkerFaceColor', 'none', 'LineWidth', 2, 'DisplayName', '(0.8,0.2)'); % Square marker, no fill
semilogy(nan, nan, 'ko', 'MarkerSize', 7, 'MarkerFaceColor', 'none', 'LineWidth', 2, 'DisplayName', '(0.6,0.4)'); % Circle marker, no fill
% Add the legend
kk = legend();
set(kk, 'Interpreter', 'Latex');

% Axis labels and formatting
xlabel('$$\mathrm{Distance~(m)}$$', 'FontName', 'Times New Roman', 'FontSize', 12, 'Interpreter', 'latex');
ylabel('$$\mathrm{Outage~Probability}$$', 'FontName', 'Times New Roman', 'FontSize', 12, 'Interpreter', 'latex');
set(gca, 'FontSize', 12, 'XGrid', 'on', 'YGrid', 'on', 'GridLineStyle', ':', 'MinorGridLineStyle', 'none', 'FontName', 'Times New Roman');

% Hold off
hold off;
