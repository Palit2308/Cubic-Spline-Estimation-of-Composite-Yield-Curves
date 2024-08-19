clear 
clc
close all

% Bootstrap 
boot=1; % If bootstrap, boot=1;
num_boot=5000;

%country = {'Germany','Italy' , 'Spain'};   
%country = {'Croatia'}; %, 'Austria' , 'Belgium'
country = {'Cyprus'};  %, 'Finland' , 'Ireland'
%country = {'Netherlands', 'Portugal', 'Slovakia'};
%country = {'Slovenia' , 'France'};

% Unweighted least squares
[df_interest_sovereign_CDS_all_1] = df_sovereign_unweighted_CDS(country, boot, num_boot);

save('C:/Users/defaultuser0/Desktop/Sneha_thesis/Discount_Rate/boot1/Sov_CDS/df_interest_sovereign_CDS_Cyprus', 'df_interest_sovereign_CDS_all_1');