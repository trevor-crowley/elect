%%
%     % create image, mapping escape count grid to colour map
%      image(c)
%      axis image
%      colormap(flipud(jet(depth)))

centre = -.7700-.1300i;
width = 0.1;
grid = 1024;
iter = 256;

%% build
buildInstrumentedMex mandel_fi ...
    -args {centre,width,grid,iter } -histogram
%%

[z_expected, c_expected] = mandel(centre,width,grid,iter);

%% test
[z, c] = mandel_fi_mex(centre,width,grid,iter);
%%

% showInstrumentationResults mandel_fi_mex ...
%      -proposeFL defaultDT 'embedded.numerictype'
 
err = c - c_expected;


