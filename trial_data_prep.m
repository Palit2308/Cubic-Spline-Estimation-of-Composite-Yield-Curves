% Load the -v7.3 file
mat_data = load("C:\Users\defaultuser0\Desktop\Sneha_thesis\Discount_Rate\boot1\All_Euro\df_interest_sovereign_CDS_all_euro.mat");

% Convert double precision to single to save space [ONLY FOR WITH CDS]
mat_data.df_interest_sovereign_CDS_all_1 = single(mat_data.df_interest_sovereign_CDS_all_1);


% Save the loaded data in the normal -v7 format
save("C:\Users\defaultuser0\Desktop\Sneha_thesis\Discount_Rate\boot1\All_Euro\df_interest_sovereign_CDS_all_euro_normal.mat", '-struct', 'mat_data', '-v7');
