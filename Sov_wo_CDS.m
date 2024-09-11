
clear 
clc
close all

% Bootstrap 
boot=1; % If bootstrap, boot=1;
num_boot=5000;

country = {'Croatia'};
%country = {'Germany', 'France', 'Italy', 'Finland', 'Spain', 'Portugal', 'Netherlands', 'Ireland', 'Austria', 'Belgium'}; 
          

% Unweighted least squares
[df_interest_sovereign_wo_CDS_all] = df_sovereign_unweighted_woCDS(country, boot, num_boot);

save('C:/Users/defaultuser0/Desktop/Sneha_thesis/Discount_Rate/boot0/Sov_wo_CDS/df_interest_sovereign_wo_CDS_Croatia', 'df_interest_sovereign_wo_CDS_all');