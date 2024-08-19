cds_dtm=[0 1825 2555 3650 7300 10950];
% List of countries
countries = {'Luxembourg', 'Malta'}; 
% Loop through each country
for i = 1:length(countries)
    country = countries{i};
    
    % Construct file paths dynamically
    priceFile = sprintf('C:/Users/defaultuser0/Desktop/Sneha_thesis/excel_files/Sov_Dirty_Prices/%s_sov_dirtyprice.xlsx', country);
    couponFile = sprintf('C:/Users/defaultuser0/Desktop/Sneha_thesis/excel_files/Sov_Coupons/%s_sov_coupon.xlsx', country);
    dtmFile = sprintf('C:/Users/defaultuser0/Desktop/Sneha_thesis/excel_files/Sov_DTM/%s_sov_dtm.xlsx', country);
    dateFile = sprintf('C:/Users/defaultuser0/Desktop/Sneha_thesis/excel_files/Date_File.xlsx');
    coupondateFile = sprintf('C:/Users/defaultuser0/Desktop/Sneha_thesis/excel_files/Sov_Coupon_Dates/%s.xlsx', country);
    
    % Read data for the current country
    price = readmatrix(priceFile);
    coupon_all = readmatrix(couponFile);
    dtm = readmatrix(dtmFile);
    date = readmatrix(dateFile);
    coupon_dates = readmatrix(coupondateFile);

    % Process the data
    ind_dtm = dtm < 10950;
    dtm(ind_dtm == 0) = NaN;
    T = size(price, 1);
    price = price .* ind_dtm(1:T, :);
    price(price == 0) = NaN;

    dtm = dtm .* ind_dtm;

    date_all = coupon_all(:, 1);
    coupon_all = coupon_all(:, 2:size(coupon_all, 2));
    coupon_all(isnan(coupon_all) == 1) = 0;
    
    N = size(price, 2);

    % Save processed data
    saveFile = sprintf('C:/Users/defaultuser0/Desktop/Sneha_thesis/Combined_Datasets/Sov_CDS/data_%s_sovereign_bonds_2020.mat', country);
    save(saveFile, 'price', 'coupon_all', 'dtm', "coupon_dates");
end