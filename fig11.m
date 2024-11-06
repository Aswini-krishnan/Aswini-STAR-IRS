% Initial setup
clc;
clear all;
close all;

% Data
EbN0dB =[0:0.1:1];

%TCJMT SISO
%RSMA ICN
nerr_ana1=[16.30401813    14.64143215   12.97893057    11.31669574    9.655304081   7.996572236	6.346189849	4.72161018     3.173094926     1.821415081	  0.848844899];
   nerr_ana2=[15.62527898   13.96271632   12.30028882  10.63828811    8.977635438   7.32122981  5.678097741  4.075438315   2.587547457   1.369375748	  0.585547462	];
  nerr_ana3=[14.30207224   12.63960337   10.97747191   	9.316406633  7.658702694	 6.011530219	 4.396709714	 2.875613896	 1.586547461	 0.707750732   0.26329744];
nerr_ana4=[14.88759559   13.22507469   11.56277878    9.901193928       8.241853257      6.589565326        4.959150498           3.393897641	 2.001999999	 0.963462141	 0.378890134];
 nerr_ana5=[13.30114442       11.63883168	     9.977193463	 8.317684602	    6.66486968          5.032835478		 3.462891047	     2.059430581	 1.000999998	 	0.39680557       0.137641027	];
nerr_ana6=[ 13.88664383     12.22422695    10.56225991    8.901713821       7.24564309         5.603551113     4.003999979		 2.524431075		 1.323250015	 0.560630949		 0.201835494	 ];

% STBC 2x2 ML TCJMT
  % nerr2_ana=[ 0 0.4 0.96 1.7215 2.6529 3.7477 4.9489 6.8784 9];
  %  nerr3_ana=[0 0 0.4 1 1.8 2.5 3.1 4.1 4.9];

% nerr4 = [0.56567 0.40981 0.28327 0.18937 0.12438 0.08082 0.05235 0.03371 0.02148 0.01367 0.00865 0.00538 0.00335 0.00202 0.00139 0.00074];
% nerr2 = [0.20305 0.13315 0.08614 0.05576 0.03532 0.02236 0.0145 0.00914 0.00579 0.0037 0.00235 0.00146 0.00089 0.00051 0.0003 0.00018];
figure
 plot(EbN0dB, nerr_ana1,'-+r','LineWidth',2, 'HandleVisibility', 'off');
  hold on;
   plot(EbN0dB, nerr_ana2,'-.+r','LineWidth',2, 'HandleVisibility', 'off');
  hold on;
   
   plot(EbN0dB, nerr_ana4,'-^k','LineWidth',2, 'HandleVisibility', 'off');
  hold on;
  plot(EbN0dB, nerr_ana3,'-.^k','LineWidth',2, 'HandleVisibility', 'off');
  hold on;
   
   plot(EbN0dB, nerr_ana6,'-*m','LineWidth',2, 'HandleVisibility', 'off');
  hold on;
  plot(EbN0dB, nerr_ana5,'-.*m','LineWidth',2, 'HandleVisibility', 'off');
  hold on;



% figure
%  plot(EbN0dB, nerr_ana1,'-ob','LineWidth',2, 'HandleVisibility', 'off');
%   hold on;
%   plot(EbN0dB, nerr_ana2,'-.sm','LineWidth',2, 'HandleVisibility', 'off');
%   hold on;
%    plot(EbN0dB, nerr_ana4,'-ob','LineWidth',2, 'HandleVisibility', 'off');
%   hold on;
%   plot(EbN0dB, nerr_ana3,'-.sm','LineWidth',2, 'HandleVisibility', 'off');
%   hold on;
% 
% 
%   plot(EbN0dB, nerr_ana6,'-ob','LineWidth',2, 'HandleVisibility', 'off');
%   hold on;
%    plot(EbN0dB, nerr_ana5,'-.sm','LineWidth',2, 'HandleVisibility', 'off');
%   hold on;
% 
%  plot(EbN0dB, nerr_ana8,'-ob','LineWidth',2, 'HandleVisibility', 'off');
% 
%   hold on;
%   plot(EbN0dB, nerr_ana7,'-.sm','LineWidth',2, 'HandleVisibility', 'off');
% 
%   hold on;
% Plotting data with lines and markers
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
%  % hold on;
%  % semilogy(EbN0dB, nerr3_sim,'sk','LineWidth',2);

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

semilogy(nan, nan, 'r+', 'MarkerSize', 7, 'MarkerFaceColor', 'none', 'LineWidth', 2, 'DisplayName', 'SNR=50dB'); % Square marker, no fill
semilogy(nan, nan, 'k^', 'MarkerSize', 7, 'MarkerFaceColor', 'none', 'LineWidth', 2, 'DisplayName', 'SNR=30dB'); % Circle marker, no fill
semilogy(nan, nan, 'm*', 'MarkerSize', 7, 'MarkerFaceColor', 'none', 'LineWidth', 2, 'DisplayName', 'SNR=10dB'); % Circle marker, no fill
% Add the legend
kk = legend();
set(kk, 'Interpreter', 'Latex');

% Axis labels and formatting
xlabel('$$\mathrm{Error~(\epsilon)}$$', 'FontName', 'Times New Roman', 'FontSize', 12, 'Interpreter', 'latex');
ylabel('$$\mathrm{WSR}$$', 'FontName', 'Times New Roman', 'FontSize', 12, 'Interpreter', 'latex');
set(gca, 'FontSize', 12, 'XGrid', 'on', 'YGrid', 'on', 'GridLineStyle', ':', 'MinorGridLineStyle', 'none', 'FontName', 'Times New Roman');

% Hold off
hold off;
