%%
%     % create image, mapping escape count grid to colour map
%      image(c)
%      axis image
%      colormap(flipud(jet(iter)))

%% setup data
T = mandel_type('fixed');

centre = -0.7700+ 0.1300i;
width = 0.1 / 8;
grid = 1024;
iter = 255;

%% build mex
buildInstrumentedMex mandel_fi ...
    -args {centre,width,grid,iter,T } -histogram

%% run mex
[z, c] = mandel_fi_mex(centre,width,grid,iter,T);

%% test model - debug
[z, c] = mandel_fi(centre,width,grid,iter,T);

%% calc expected
[z_exp, c_exp] = mandel(centre,width,grid,iter);

%% map
colormap(flipud(jet(iter)));
image(c);
%image(c_exp);
%% map diff
image (c-c_exp)

%% test model
showInstrumentationResults mandel_fi_mex ...
    -proposeFL -defaultDT numerictype(1,18, 15)

%% get error
absError = abs(c-c_exp);
relError = max(absError(:) ./ abs(c_exp(:)))
% Ceiling, Nearest, convergent, Round 7
% zero 9
