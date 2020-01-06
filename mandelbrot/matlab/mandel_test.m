%%
%     % create image, mapping escape count grid to colour map
%      image(c)
%      axis image
%      colormap(flipud(jet(depth)))

%% build

T = mandel_type('single');

centre = cast(-0.7700, 'like', T.x) -cast(0.1300i, 'like', T.x);
width = double(0.1);
grid = uint16(1024);
iter = uint16(256);

buildInstrumentedMex mandel_fi ...
    -args {centre,width,grid,iter,T } -histogram
%% expected
[z_expected, c_expected] = mandel(centre,width,grid,iter);
%%

%% test
[z, c] = mandel_fi_mex(centre,width,grid,iter,T);
%%

%% test model
showInstrumentationResults mandel_fi_mex ...
    -proposeFL -defaultDT numerictype(1,16)
%%


%% get error
absError = abs(c-c_expected);
relError = max(absError(:) ./ abs(c_expected(:)))
%%

