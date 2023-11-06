% MATLAB R2021b
T = [5,60,300,3600];
lnT = log(T);
MSp = [19.96,8.28,4.08,3.73];
MTT = [15.88	8.40	5.53	5.15];
FSp = [16.19	7.75	3.93	3.31];
FTT = [15.11	8.29	5.31	4.70];
%% Initialization.
% Initialize arrays to store fits and goodness-of-fit.
fitresult = cell( 4, 1 );
gof = struct( 'sse', cell( 4, 1 ), ...
    'rsquare', [], 'dfe', [], 'adjrsquare', [], 'rmse', [] );
%% Fit: 'MTT'.
[xData, yData] = prepareCurveData( lnT, MTT );
% Set up fittype and options.
ft = fittype( 'a*exp(-b*x)+c', 'independent', 'x', 'dependent', 'y' );
opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
opts.Display = 'Off';
opts.StartPoint = [0.748151592823709 0.450541598502498 0.0838213779969326];
% Fit model to data.
[fitresult{1}, gof(1)] = fit( xData, yData, ft, opts );
%% Fit: 'MSp'.
[xData, yData] = prepareCurveData( lnT, MSp );
% Set up fittype and options.
ft = fittype( 'a*exp(-b*x)+c', 'independent', 'x', 'dependent', 'y' );
opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
opts.Display = 'Off';
opts.StartPoint = [0.262971284540144 0.654079098476782 0.689214503140008];
% Fit model to data.
[fitresult{2}, gof(2)] = fit( xData, yData, ft, opts );
%% Fit: 'FSp'.
[xData, yData] = prepareCurveData( lnT, FSp );
% Set up fittype and options.
ft = fittype( 'a*exp(-b*x)+c', 'independent', 'x', 'dependent', 'y' );
opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
opts.Display = 'Off';
opts.StartPoint = [0.162182308193243 0.794284540683907 0.311215042044805];
% Fit model to data.
[fitresult{3}, gof(3)] = fit( xData, yData, ft, opts );
%% Fit: 'FTT'.
[xData, yData] = prepareCurveData( lnT, FTT );
% Set up fittype and options.
ft = fittype( 'a*exp(-b*x)+c', 'independent', 'x', 'dependent', 'y' );
opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
opts.Display = 'Off';
opts.StartPoint = [0.469390641058206 0.0119020695012414 0.337122644398882];
% Fit model to data.
[fitresult{4}, gof(4)] = fit( xData, yData, ft, opts );