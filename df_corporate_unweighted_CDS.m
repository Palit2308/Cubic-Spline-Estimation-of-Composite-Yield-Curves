function [df_interest_datastream_foreign_all, price_all, dtm_all, coupon_all_all, cdspremia_all, cds_initial_all]=df_corporate_all_separate_all(country, boot, num_boot)

df_interest_datastream_foreign_all=[];

% Estimation, loop over countries
% Output is df_interest_datastream_foreign_all

% Estimation, loop over countries
% Output is df_interest_datastream_foreign_all
for k=1
 % Construct the file path using the k-th element of the country array
data = sprintf('C:/Users/defaultuser0/Desktop/Sneha_thesis/Combined_Datasets/Cor_CDS/data_%s_corporate_bonds_2020_CDS.mat', country{k});
load(data);
K=size(coupon_all,1);
T=size(price,1);
df_interest_foreign=estimation_mcculloch_unweighted_CDS(price, coupon_all, dtm, cdspremia, cds_initial, K, T, boot, num_boot);

s=size(dtm);                                          
df_interest_datastream_foreign_all=[df_interest_datastream_foreign_all; df_interest_foreign];	

end