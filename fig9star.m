% Initial setup
clc;
clear all;
close all;

% Data
EbN0dB =[0:2:30];

%TCJMT SISO
nerr=[ 0.7889	0.62335	0.46107	0.32301	0.21694	0.14363	0.09274	0.05981	0.0381	0.02425	0.01519	0.00952	0.00592	0.00401	0.00237	0.00153];

%MIMO 2x2 TCJMT ML
nerr1=[ 1	1	0.99994	0.99807	0.98056	0.91613	0.79091	0.62748	0.46354	0.32418	0.21905	0.14372	0.09363	0.06077	0.03887	0.02473];
%



% STBC 2x2 ML TCJMT
  nerr2=[0.96751	0.88529	0.74543	0.57835	0.42068	0.29086	0.1948	0.12791	0.08327	0.05325	0.03465	0.02141	0.01364	0.00868	0.0054	0.00329];
   nerr3=[0.99999	0.9998	0.99667	0.97153	0.89409	0.75798	0.59116	0.42971	0.29744	0.20084	0.13072	0.08454	0.05373	0.03388	0.02169	0.0135];
% 
% % STBC 2x2 DCS TCJMT r=1
  nerr4=[0.99934	0.99056	0.94866	0.84638	0.6926	0.52357	0.37282	0.25618	0.16984	0.11066	0.07103	0.04549	0.02936	0.01847	0.01186	0.00762];

% STBC 2x2 DCS TCJMT  r=2
 nerr5=[1	1	0.99908	0.98941	0.94344	0.83567	0.6795	0.51246	0.36445	0.24933	0.16493	0.10698	0.06933	0.04464	0.02861	0.01775];


nerr_sim=[ 0.7889	0.62335	0.46107	0.32301	0.21694	0.14363	0.09274	0.05981	0.0381	0.02425	0.01519	0.00952	0.00592	0.00401	0.00237	0.00153];

%MIMO 2x2 TCJMT ML
nerr1_sim=[ 1	1	0.99994	0.99807	0.98056	0.91613	0.79091	0.62748	0.46354	0.32418	0.21905	0.14372	0.09363	0.06077	0.03887	0.02473];
%



% STBC 2x2 ML TCJMT
  nerr2_sim=[0.96751	0.88529	0.74543	0.57835	0.42068	0.29086	0.1948	0.12791	0.08327	0.05325	0.03465	0.02141	0.01364	0.00868	0.0054	0.00329];
   nerr3_sim=[0.99999	0.9998	0.99667	0.97153	0.89409	0.75798	0.59116	0.42971	0.29744	0.20084	0.13072	0.08454	0.05373	0.03388	0.02169	0.0135];
% 
% % STBC 2x2 DCS TCJMT r=1
  nerr4_sim=[0.99934	0.99056	0.94866	0.84638	0.6926	0.52357	0.37282	0.25618	0.16984	0.11066	0.07103	0.04549	0.02936	0.01847	0.01186	0.00762];

% STBC 2x2 DCS TCJMT  r=2
 nerr5_sim=[1	1	0.99908	0.98941	0.94344	0.83567	0.6795	0.51246	0.36445	0.24933	0.16493	0.10698	0.06933	0.04464	0.02861	0.01775];

% Plotting data with lines and markers
figure
% imagesc(nerr1, nerr5, EbN0dB);
% colorbar;
 semilogy(EbN0dB, nerr1,'-.or','LineWidth',2, 'HandleVisibility', 'off');
  hold on;
 % semilogy(EbN0dB, nerr1_sim,'ro','LineWidth',2);
  hold on;
  %semilogy(EbN0dB,nerr5 ,'-ok','LineWidth',2);
  hold on;
  semilogy(EbN0dB, nerr3,'-or','LineWidth',2, 'HandleVisibility', 'off');
  hold on;
   %semilogy(EbN0dB, nerr3_sim,'or','LineWidth',2);
  hold on;
  semilogy(EbN0dB, nerr4,'-.sk','LineWidth',2, 'HandleVisibility', 'off');
  hold on;
  %semilogy(EbN0dB, nerr4_sim,'sk','LineWidth',2);
  hold on;
  semilogy(EbN0dB,nerr2 ,'-sk','LineWidth',2, 'HandleVisibility', 'off');
  hold on;
% semilogy(EbN0dB,nerr2_sim ,'sk','LineWidth',2);
  hold on;
% figure;
% semilogy(EbN0dB, nerr1, '-ko', 'LineWidth', 2, 'HandleVisibility', 'off'); % Line with circle marker, no legend
% hold on;
% semilogy(EbN0dB, nerr5, '-rs', 'LineWidth', 2, 'HandleVisibility', 'off'); % Line with square marker, no legend
% semilogy(EbN0dB, nerr3, '-.ko', 'LineWidth', 2, 'HandleVisibility', 'off'); % Line with circle marker, no legend
% semilogy(EbN0dB, nerr, '-ko', 'LineWidth', 2, 'HandleVisibility', 'off'); % Line with circle marker, no legend
% semilogy(EbN0dB, nerr4, '-.rs', 'LineWidth', 2, 'HandleVisibility', 'off'); % Line with square marker, no legend
% semilogy(EbN0dB, nerr2, '-rs', 'LineWidth', 2, 'HandleVisibility', 'off'); % Line with square marker, no legend
% 
% % Adding invisible plots to the legend to show only markers
semilogy(nan, nan, 'ro', 'MarkerSize', 7, 'MarkerFaceColor', 'none', 'LineWidth', 2, 'DisplayName', '(0.6, 0.4)'); % Circle marker, no fill
semilogy(nan, nan, 'ks', 'MarkerSize', 7, 'MarkerFaceColor', 'none', 'LineWidth', 2, 'DisplayName', '(0.8, 0.2)'); % Square marker, no fill

% Add the legend
kk = legend();
set(kk, 'Interpreter', 'Latex');

% Axis labels and formatting
xlabel('$$\mathrm{Number~of~Elements~(N_{k})}$$', 'FontName', 'Times New Roman', 'FontSize', 12, 'Interpreter', 'latex');
ylabel('$$\mathrm{Outage~Probability}$$', 'FontName', 'Times New Roman', 'FontSize', 12, 'Interpreter', 'latex');
set(gca, 'FontSize', 12, 'XGrid', 'on', 'YGrid', 'on', 'GridLineStyle', ':', 'MinorGridLineStyle', 'none', 'FontName', 'Times New Roman');

% Hold off
hold off;
