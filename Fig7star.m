% MATLAB Code for Bar Plot

% Data for Sum Rate
alpha_c = [0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8];   % x-axis values (alpha_c)
R_user = [8, 9, 7, 10, 9, 12, 13];              % Sum rate for R user
T_user = [10, 11, 10, 9, 11, 11, 12];           % Sum rate for T user

% Create a grouped bar chart
figure;
bar(alpha_c, [R_user; T_user]', 'grouped');    % Transpose the data for grouped bars

% Set bar colors and patterns
set(gca, 'XTickLabel', alpha_c);
set(gca, 'XTick', 1:length(alpha_c));
h = gca;
h.Children(2).FaceColor = [0.5 0.5 0.5];       % Gray color for T user
h.Children(1).FaceColor = 'k';                 % Black color for R user
h.Children(1).LineStyle = '-';                 % Pattern for R user
h.Children(2).LineStyle = '--';                % Pattern for T user

% Labels and Title
xlabel('\alpha_c');
ylabel('Sum Rate');
legend('R user', 'T user', 'Location', 'northwest');
title('Sum Rate vs. \alpha_c');

% Adjust the y-axis limit
ylim([0 14]); % Based on visual observation in the provided image

grid on;
